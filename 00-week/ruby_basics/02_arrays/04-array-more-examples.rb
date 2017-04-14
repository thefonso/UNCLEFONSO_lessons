#ARRAYS: Even more examples
#
# play each of the lines below
# get a feel for what is happening with # =>


# numeric array
my_numeric_array = [1, 2, 3, 4, 5, 6]
my_numeric_array[0] # => 1
my_numeric_array[1] # => 2
my_numeric_array.first  # => 1
my_numeric_array.last  # => 6
my_numeric_array.push(56) # => [1, 2, 3, 4, 5, 6, 56]
my_numeric_array.pop # => 56
my_numeric_array  # => [1, 2, 3, 4, 5, 6]
my_numeric_array << 56  # => [1, 2, 3, 4, 5, 6, 56]
my_numeric_array.pop # => 56


# string array
my_string_array = ["Welcome", "to"]
my_string_array << "Ruby" # => ["Welcome", "to", "Ruby"]
my_string_array.shift # => "Welcome"
my_string_array.unshift(["Say", "hello"]) # => [["Say", "hello"], "to", "Ruby"]
my_string_array.flatten! # => ["Say", "hello", "to", "Ruby"]
my_string_array.reverse! # => ["Ruby", "to", "hello", "Say"]
my_string_array.pop # => "Say"
my_string_array << "I" # => ["Ruby", "to", "hello", "I"]
my_string_array.push("say") # => ["Ruby", "to", "hello", "I", "say"]
my_string_array.delete_at(1) # => "to"
my_string_array.unshift("To") # => ["To", "Ruby", "hello", "I", "say"]


# mixed array (both numeric and string types)
my_mixed_array = ["Welcome", 2, "Ruby", 2027] # !> assigned but unused variable - my_mixed_array


# ranges
# 1..10
# 1...10
(1..10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
(1...10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9]

# shuffle
cards = ["Ace of Spades", "Two of Clubs", "Queen of Hearts", "3 of Diamonds", "Jack of Clubs", "8 of Spades"]
cards.shuffle # => ["8 of Spades", "Jack of Clubs", "Two of Clubs", "3 of Diamonds", "Queen of Hearts", "Ace of Spades"]
# sample
lottery_numbers = [42349834, 349823437, 1982323892, 127323, 9128319823, 8239239]
lottery_numbers.sample  # => 349823437
lottery_numbers.sample  # => 1982323892

# index
chapter_titles = ["An Unexpected Journey", "Roast Mutton", "A Short Rest", "Interludes And Examinations", "Riddles In The Dark"]
chapter_titles.index("A Short Rest") # => 2


# flatten - Returns a new array that is a one-dimensional flattening of self (recursively).
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten # => [1, 2, 3, 4, 5]

# uniq
a = ["Spock", "Spock", "Jim"]
a.uniq # => ["Spock", "Jim"]

# Resource: http://ruby-doc.org/core-2.1.2/Enumerable.html#method-i-each_cons
#
