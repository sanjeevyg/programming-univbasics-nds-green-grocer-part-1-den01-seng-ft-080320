def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each {|element|
    element.each {|key_1, value_1|
      if element[key_1] == name
        return element
      end
    }
  }
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
    hash = Hash.new(0)
  cart.each {|element|
    hash[element] += 1
  }
  cart_1 = Array.new(0)
  hash.each {|key_1, value_1|
    key_1[:count] = value_1
    cart_1 << key_1
  }
  cart_1
end


  