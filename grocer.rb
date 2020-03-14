def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0
  while i < collection.length do
    if name === collection[i][:item]
      return collection[i]
    else
      return nil
    end
    i += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  array_w_count = []
  i = 0 
  while i < cart.length do
    if array_w_count[i].has_value?()
    
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  while i < cart.length do
    item_name = cart[i][:item]
    if find_item_by_name_in_collection(item_name, coupon)
    end
  #CONTENT
  end
   i += 1 
 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  
  while i < cart.length do 
    if cart[i][:clearance]
      cart[i][:price] = cart[i][:price] * 0.8
    else
      #do nothing if no clearance
    end
     i += 0 
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  apply_coupons(consolidated_cart, coupons)
  apply_clearance(cart)
  
  consolidated_cart = consolidated_cart(cart)
  coupons_applied_to_consolidated = apply_coupons(consolidated_cart, coupons)
  clearance_and_coupons_applied = apply_clearance(coupons_applied_to_consolidated)
  
  total = 0.0
  i = 0 
  
  while i < clearance_and_coupons_applied.length do
    price_of_item = clearance_and_coupons_applied[i][:price]
    float_price = price_of_item.to_f
    total += float_price
  end
  i += 1
end

