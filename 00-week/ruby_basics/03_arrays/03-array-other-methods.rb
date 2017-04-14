# ARRAYS: other methods
#
characters = ['a', 'b', 'c']


# Concatenate with +
characters + ['d', 'e'] # => ["a", "b", "c", "d", "e"]


# Append to an array
characters # => ["a", "b", "c"]
characters << 'd'
characters # => ["a", "b", "c", "d"]


# Replace
characters[1] = 'Bee'
characters # => ["a", "Bee", "c", "d"]


# Delete index
characters.delete_at 1
characters # => ["a", "c", "d"]


# Delete object
characters.delete 'c'
characters # => ["a", "d"]


# Insert
index = 1
characters.insert index, 'b' , 'c'
characters # => ["a", "b", "c", "d"]


# Sorting
['c', 'b', 'd', 'a'].sort # => ["a", "b", "c", "d"]

