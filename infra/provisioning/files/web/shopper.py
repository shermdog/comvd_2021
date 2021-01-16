import requests
import random
import time

shop = '127.0.0.1:8080'
stock = '127.0.0.1:8081'
orders = 20
reload = False


while True:
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
        time.sleep(random.randrange(1, 4))
        checkout = requests.get(f'http://{shop}/checkout/{cart["order_number"]}')
        print(checkout.status_code, checkout.json())

    if reload:
        time.sleep(random.randrange(1, 20))
        print(requests.get(f'http://{stock}/reload'))
