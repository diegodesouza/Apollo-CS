# Algorithm to check whether a specific element exists within an array

def exists?(array, target)
  array.each do |element|
    if element == target
      return true
    end
  end
  false
end

# Algorithm to remove duplicates from an array

def unique(array)
  unique_array = []

  array.each do |original_element|
    found = false

    unique_array.each do |unique_element|
      if original_element == unique_element
        found = true
        break
      end
    end

    if !found
      unique_array << original_element
    end
  end

  unique_array
end


# examples of O(n) and O(n2) methods, otherwise known as methods with linear
# and quadratic complexity. 
