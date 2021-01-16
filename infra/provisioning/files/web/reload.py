from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from config import get_config
from datetime import datetime
from random import randrange

app = Flask(__name__)
app.config.from_object(get_config(env=None))
db = SQLAlchemy(app)
db.reflect()

class Stock(db.Model):
    __tablename__ = 'spree_stock_items'

@app.route('/')
def healthcheck():
    return {'status': 'healthy', 'time': datetime.now().strftime("%m/%d/%Y, %H:%M:%S")}

@app.route('/reload')
def stock_products():
    now = datetime.now().strftime("%m/%d/%Y, %H:%M:%S")
    stock = Stock.query.all()
    for item in stock:
        if item.count_on_hand < 10:
            item.count_on_hand += randrange(50)
            item.updated_at = now
    db.session.commit()
    return "Stocked"

@app.route('/zero')
def zero():
    now = datetime.now().strftime("%m/%d/%Y, %H:%M:%S")
    stock = Stock.query.all()
    for item in stock:
        item.count_on_hand = 0
        item.updated_at = now
    db.session.commit()
    return "Emptiness is loneliness and loneliness is cleanliness"
