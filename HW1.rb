# My testing framework
def test(name, input, exp_output, your_output)
	puts(name + " ===================")
	puts("input: " + input)
	puts("expected output: " + exp_output.to_s + "| your_output: " + your_output.to_s)
	puts(exp_output == your_output ? "+++++++ Correct!" : "------- Wrong!")
end

# Homework 1
# 1. Check the documentation on Array, Hash and Enumerable as they could help tremendously with these exercises. :-)
# Define a method sum which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.
def sum(i_array)
	@s = 0
	i_array.each do |i|
		@s += i
	end
	return @s
end

test("sum #1", "[1,2,3,-1]", 5, sum([1,2,3,-1]))
test("sum #2", "[]", 0, sum([]))

# Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element.
def max_2_sum(i_array)
	@top = [0, 0]
	i_array.each do |i|
		if i > @top[0]
			if i > @top[1]
				@top[0] = @top[1]
				@top[1] = i
			else
				@top[0] = i
			end
		end
	end
	return sum(@top)
end

test("max_2_sum #1", "[1,2,3,-1]", 5, max_2_sum([1,2,3,-1]))
test("max_2_sum #2", "[1]", 1, max_2_sum([1]))
test("max_2_sum #3", "[]", 0, max_2_sum([]))

# Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.
def sum_to_n?(i_array, n)
	if i_array.length == 0
		return n == 0 ? true : false
	end
	while i = i_array.shift
		if i_array.include?(n-i)
			return true
		end
	end
	return false
end

test("sum_to_n? #1", "[1,2,3], 2", false, sum_to_n?([1,2,3], 2))
test("sum_to_n? #2", "[1,2,3], 3", true, sum_to_n?([1,2,3], 3))
test("sum_to_n? #3", "[], 0", true, sum_to_n?([], 0))
test("sum_to_n? #4", "[], 1", false, sum_to_n?([], 1))

# 2.Check the documentation on String and Regexp as they could help tremendously with these exercises. :-)
# Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name.
def hello(name)
	# Code Here
end

test("hello(name) #1", "\"Stayman\"", "Hello, Stayman", hello("Stayman"))

# Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.)NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
	# Code Here
end

test("starts_with_consonant(s) #1", "\"Amazing\"", false, starts_with_consonant?("Amazing"))
test("starts_with_consonant(s) #2", "\"grace\"", true, starts_with_consonant?("grace"))
test("starts_with_consonant(s) #3", "\"!!!\"", true, starts_with_consonant?("!!!"))

# Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
	# Code Here	
end

test("binary_multiple_of_4?(s) #1", "\"not valid\"", false, binary_multiple_of_4?("not valid"))
test("binary_multiple_of_4?(s) #2", "\"1010\"", false, binary_multiple_of_4?("1010"))
test("binary_multiple_of_4?(s) #3", "\"1100\"", true, binary_multiple_of_4?("1100"))

# 3.Define a class BookInStock which represents a book with an isbn number, isbn, and price of the book as a floating-point number, price, as attributes. The constructor should accept the ISBN number (a string) as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) if the ISBN number is the empty string or if the price is less than or equal to zero. Include the proper getters and setters for these attributes. Include a method price_as_string that returns the price of the book with a leading dollar sign and trailing zeros, that is, a price of 20 should display as "$20.00" and a price of 33.8 should display as "$33.80".

class BookInStock
	# Code Here
end

