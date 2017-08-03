# ARRAYS: iterating
#
# let's create a new array called numbers...
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

sum = 0
numbers.map { |number| sum += number }
sum # => 45


squares = numbers.map { |number| number * number }
squares # => [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
#compare to our original
numbers # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


result = []
numbers.each_slice(2) { |a, b| result << [a, b] }
result # => [[0, 1], [2, 3], [4, 5], [6, 7], [8, 9]]


result = []
numbers.each_cons(2) { |a, b| result << [a, b] }
result # => [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8], [8, 9]]


