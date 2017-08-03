# ARRAYS: filtering
#
# Select, Reject, Detect

numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


evens = numbers.select { |number| number.even? }
evens   # => [0, 2, 4, 6, 8]


odds = numbers.reject { |number| number.even? }
odds    # => [1, 3, 5, 7, 9]


bigger_than_four = numbers.detect { |number| number > 4 }
bigger_than_four # => 5


# Note that none of these methods modify the original array
# They all return new array
numbers # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
