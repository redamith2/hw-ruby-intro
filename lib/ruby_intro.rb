# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
    sum+=i
  end 
  return sum
end

def max_2_sum arr
  if arr.size == 0
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
  arr = arr.sort
  sum=0
  sum = arr[-1] + arr[-2]
  return sum
end

def sum_to_n? arr, n
  sum = Hash.new 
  arr.each do |i|
    if sum.has_key?(n-i)
      return true
    else
      sum[i] = 1
    end 
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.size == 0
    return false
  end
  
  if s[0].match(/^[[:alpha:]]$/) and !['A','I','E','O','U'].include?(s[0].upcase)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.size==0 or s.count('01') != s.size
    return false
  end
  
  val = s.to_i(2)
  if val%4==0
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :price
  attr_accessor :isbn
  
  def initialize(isbn, price)
    if isbn.size ==0 or price <=0
      raise ArgumentError, "In valid arguments"
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f"%@price.to_f()
  end
end
