def find_item_by_name_in_collection(name, collection)
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


  