# Select, Reject, Detect
# ( resource: http://ruby-doc.org/core-2.1.2/Enumerable.html#method-i-detect )
#
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


# Select to make a new array of only the elements 
# you want if the block returns a truthy value then 
# that element will be in the result.
evens = numbers.select { |number| number.even? }
evens   # => [0, 2, 4, 6, 8]

# Reject is the opposite
odds = numbers.reject { |number| number.even? }
odds    # => [1, 3, 5, 7, 9]

# Detect will find the first element that is true
# according to instructions in your block
biggerThanFour = evens.detect { |number| number > 4 }
biggerThanFour # => 6


# Note that none of these methods modify the original array
# They all return new array
numbers # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
