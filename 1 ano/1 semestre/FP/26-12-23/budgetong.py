products = {
    "xbox" : 250,
    "smartphone" : 500,
    "jeans" : 50,
    "pc" :600,
    "glasses" :100
        }

wishlist ={
    "glasses" : 3,
    "jeans" : 2,
    "pc" : 1,
    "xbox" : 1

        }
budget = 1200
def budgeting(budget, products, wishlist):
    total_cost = sum(products[product] * quantity for product, quantity in wishlist.items() if product in products)
    
    if total_cost > budget:
        # Sort products by price in ascending order
        sorted_products = sorted(products.items(), key=lambda x: x[1])
        
        for product, price in sorted_products:
            if product in wishlist:
                max_quantity_affordable = budget // price
                desired_quantity = wishlist[product]
                
                if max_quantity_affordable < desired_quantity:
                    wishlist[product] = max_quantity_affordable
                    total_cost -= (desired_quantity - max_quantity_affordable) * price
                    budget -= max_quantity_affordable * price
                else:
                    total_cost -= desired_quantity * price
                    budget -= desired_quantity * price
                    
            if total_cost <= budget:
                break  # Exit loop if budget is enough for remaining items
    
    return wishlist



print(budgeting(budget,products,wishlist))