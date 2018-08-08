# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.sum
end

def max_2_sum arr
  return 0 if arr.empty?
  arr.max(2).sum
end

def sum_to_n? arr, n
  arr.combination(2)
     .to_a
     .map{ |e| e.sum }
     .include? n
end

# Part 2

def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false unless s =~ /^[[:alpha:]]/
  s !~ /\A^[AEIOU]/i
end

def binary_multiple_of_4? s
  return false unless s.scan(/^\d+$/).any?
  s.to_i(2).even?
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError, "A valid ISBN must be entered" if isbn.empty?
    raise ArgumentError, "A valid Price must be entered" if price <= 0.0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % price
  end
end
