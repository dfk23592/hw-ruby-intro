# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  count = 0
		if arr.length <= 0
			return 0
		end
		arr.each do |item|
			count += item
		end
		return count
end

def max_2_sum arr
  if arr.length <= 0
			return 0
		end
		returnVal = arr.max(2).reduce(:+);
		return (returnVal);
end

def sum_to_n? arr, n
	if arr.length <= 0
		return false
	end
	if arr.empty?
		return false
	end
	arr.permutation(2).any? { |a, b| a + b == n }			
end
# Part 2

def hello(name)
	name = "Hello, #{name}"
	return name
end

def starts_with_consonant? s
		if s.empty?
			return false
  elsif s=~ /^(a|e|o|u|\d)|^\W/i
			return false
		else
			return true
		end
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
		puts "string #{s}"
		if s.empty?
			puts "logic here"
			return false
		elsif s == "0"
			return true
  elsif s=~ /^[10]*00$/
			puts "b match\n"			
			return true
		end
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%.2f" % @price
  end
end
