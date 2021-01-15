from flask import Flask, Response, jsonify
from flask_sqlalchemy import SQLAlchemy
from config import get_config
from datetime import datetime
from shortuuid import uuid

app = Flask(__name__)
app.config.from_object(get_config(env=None))
db = SQLAlchemy(app)
db.reflect()

location = 1
currency = '${currency}'

class Product(db.Model):
    __tablename__ = 'spree_products'

class Prices(db.Model):
    __tablename__ = 'spree_prices'

class Order(db.Model):
    __tablename__ = 'spree_orders'

class LineItem(db.Model):
    __tablename__ = 'spree_line_items'

class Stock(db.Model):
    __tablename__ = 'spree_stock_items'

@app.route('/')
def healthcheck():
    return {'status': 'healthy', 'time': datetime.now().strftime("%m/%d/%Y, %H:%M:%S")}

@app.route('/products')
def get_products():
    products = db.session.query(Product, Stock).select_from(Product).join(Stock, Product.id==Stock.variant_id).filter(Stock.stock_location_id==location).all()
    return jsonify([{'id': x[0].id, 'name': x[0].name, 'slug': x[0].slug, 'available': x[1].count_on_hand} for x in products ])

@app.route('/product/<slug>')
def get_product(slug):
    product, stock, price = db.session.query(Product, Stock, Prices).select_from(Product).join(Stock, Product.id==Stock.variant_id).join(Prices, Product.id==Prices.variant_id).filter(Product.slug==slug, Stock.stock_location_id==location, Prices.currency==currency).first_or_404()
    return {'id': product.id, 'name': product.name, 'slug': product.slug, 'description': product.description, 'price': float(price.amount), 'stock': stock.count_on_hand}

@app.route('/cart/<slug>/<qty>')
def cart_product(slug, qty):
    product, price = db.session.query(Product, Prices).select_from(Product).join(Prices, Product.id==Prices.variant_id).filter(Product.slug==slug, Prices.currency==currency).first_or_404()
    total = float(price.amount * int(qty))
    now = datetime.now().strftime("%m/%d/%Y, %H:%M:%S")
    order = Order(number=uuid(), item_total=total, total=total, currency=currency, state='cart', created_at=now, updated_at=now)
    db.session.add(order)
    db.session.commit()
    line = LineItem(variant_id=product.id, order_id=order.id, quantity=qty, price=price.amount, included_tax_total=total, created_at=now, updated_at=now)
    db.session.add(line)
    db.session.commit()
    return {'order_number': order.number, 'total': str(order.total), 'updated': order.updated_at}

@app.route('/checkout/<order>')
def checkout(order):
    order = Order.query.filter_by(number=order).first_or_404()
    items = LineItem.query.filter_by(order_id=order.id).all()
    for item in items:
        product = Product.query.filter_by(id=item.variant_id).first_or_404()
        stock = Stock.query.filter_by(stock_location_id=location, variant_id=item.variant_id).first_or_404()
        if stock.count_on_hand >= item.quantity:
            now = datetime.now().strftime("%m/%d/%Y, %H:%M:%S")
            new_stock = stock.count_on_hand - item.quantity
            stock.count_on_hand = new_stock
            stock.updated_at = now
            order.state = 'paid'
            order.updated_at = now
            db.session.commit()
            return {'status': 'success', 'message': f'Qty:{item.quantity} {product.name} Purchased'}
        else:
            return {'status': 'fail', 'message': f'Qty:{item.quantity} unavailable for {product.name}. {stock.count_on_hand} Available'}, 428
