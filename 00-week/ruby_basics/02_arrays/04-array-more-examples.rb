# Examples of arrays
#
# play each of the lines below
# get a feel for what is happening with # =>


# numeric array
my_numeric_array = [1, 2, 3, 4, 5, 6]
my_numeric_array[0]
my_numeric_array[1]
my_numeric_array.first
my_numeric_array.last
my_numeric_array.push(56)
my_numeric_array.pop
my_numeric_array << 56
my_numeric_array.pop


# string array
my_string_array = ["Welcome", "to"]
my_string_array << "WDI"
my_string_array.shift
my_string_array.unshift(["Say", "hello"])
my_string_array.flatten!
my_string_array.reverse!
my_string_array.pop
my_string_array << "I"
my_string_array.push("say")
my_string_array.delete_at(1)
my_string_array.unshift("To")


# mixed array (both numeric and string types)
my_mixed_array = ["Welcome", 2, "WDI", 2013] # !> assigned but unused variable - my_mixed_array


# ranges
# 1..10
# 1...10
(1..10).to_a
(1...10).to_a

# shuffle
cards = ["Ace of Spades", "Two of Clubs", "Queen of Hearts", "3 of Diamonds", "Jack of Clubs", "8 of Spades"]
cards.shuffle # =>

# sample
lottery_numbers = [42349834, 349823437, 1982323892, 127323, 9128319823, 8239239]
lottery_numbers.sample  # =>
lottery_numbers.sample  # =>

# index
chapter_titles = ["An Unexpected Party", "Roast Mutton", "A Short Rest", "Over Hill And Under Hill", "Riddles In The Dark"]
chapter_titles.index("A Short Rest")


# flatten - Returns a new array that is a one-dimensional flattening of self (recursively).
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten # => [1, 2, 3, 4, 5]

# uniq
a = ["Bob", "Bob", "Jim"]
a.uniq # => ["Bob", "Jim"]

# Resource: http://ruby-doc.org/core-2.1.2/Enumerable.html#method-i-each_cons
#
