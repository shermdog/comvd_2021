import requests
import random

shop = '127.0.0.1:8080'
orders = 20

products = requests.get(f'http://{shop}/products').json()
available = [x for x in products if x['available'] > 0]

for x in range(orders):
    product = random.choice(products)
    details = requests.get(f'http://{shop}/product/{product["slug"]}').json()
    on_hand = details['stock']
    if on_hand > 1:
        qty = random.randrange(1, on_hand)
    else:
        qty = 1
    cart = requests.get(f'http://{shop}/cart/{product["slug"]}/{qty}').json()
    checkout = requests.get(f'http://{shop}/checkout/{cart["order_number"]}')
    print(checkout.status_code, checkout.json())
