# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0;
  i = 0;
  until i == arr.length do
    sum += arr[i]
    i = i + 1
  end
  return sum
end

def max_2_sum arr
  sum = 0
  if arr.length == 0
    sum = 0
  elsif arr.length == 1
    sum = arr[0]
  else
    max_arr = arr.max(2)
    sum = max_arr[0] + max_arr[1]
  end
  return sum
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  end
  arr = arr.sort
  i = 0
  j = arr.length - 1
  until i == j do
    if arr[i] + arr[j] > n
      j = j - 1
    elsif arr[i] + arr[j] < n
      i = i + 1
    else
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  str = "Hello, #{name}"
  return str;
end

def starts_with_consonant? s
  if s =~ /^[a-zA-Z]/
    if s =~ /^[aeiou]/i
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s.size == 0 || s.count('01') != s.size
    return false
  elsif s.to_i == 0
    return true
  elsif s =~ /00$/
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  
  def initialize(isbn_number, money)
    if (isbn_number.size == 0 || money <= 0)
      raise ArgumentError, "Argument Error Message"
    end
    @isbn = isbn_number
    @price = money
  end
  
  def isbn
    @isbn
  end
    
  def isbn=(isbn_number)
    @isbn = isbn_number
  end
  
  def price
    @price
  end
  
  def price=(money)
    @price = money
  end
  
  def price_as_string
    str = "$#{'%.2f' % price}"
    return str
  end
end
