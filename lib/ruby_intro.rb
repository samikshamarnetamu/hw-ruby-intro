# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if (arr.nil? || arr.empty?)
    arr=[0]
  end
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort
  arr1 = arr.last(2)
  return arr1.sum
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.empty? || arr.nil?)
    arr=[0]
  end
  arr.combination 2 do |i, j|
    return true if i + j == n
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if s[0] == 'A' or s[0] == 'E' or s[0] == 'I' or s[0] == 'O' or s[0] == 'U'
    return false
  end
  
  if s[0] == 'a' or s[0] == 'e' or s[0] == 'i' or s[0] == 'o' or s[0] == 'u'
    return false
  end
    
  if s[0] =~ /[[:alpha:]]/
    return true
  end
  
  return false
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not s =~ /^[01]+$/
    return false
  end
  if s.length == 0 
    return false
  end
  if s.length ==1 && s[0] == '0'
    return true
  end
  if s.chars.last(2).join == '00'
    return true
  end
  
  return false

end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

def initialize(isbn, price)
  @isbn = isbn
  @price = Float(price)
 
  if isbn.empty? || price <= 0
    raise ArgumentError
  end
end

def price_as_string
  format("$%.2f", @price)
end

end
