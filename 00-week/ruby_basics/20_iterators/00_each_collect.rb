# Iterators help you enumerate over items in an array.


### .each Iterator:
#
# The .each iterator returns all the elements of an array or a hash.
# Executes the code block for each element in students.

students = ['frodo baggins', 'samwise gamgee', 'peregrin took', 'meriadoc brandybuck']

a = Array.new
a = students.each { |student| student + "!" } # => ["frodo baggins", "samwise gamgee", "peregrin took", "meriadoc brandybuck"]



### .collect Iterator:
#
# The .collect method returns the entire collection 

students = ['frodo baggins', 'samwise gamgee', 'peregrin took', 'meriadoc brandybuck']

b = Array.new
b = students.collect{ |student| student + "!" } # => ["frodo baggins!", "samwise gamgee!", "peregrin took!", "meriadoc brandybuck!"]


### QUESTION: how are these two diferent?
#
# ANSWER: one outputs the result to a new array the other does not. 
# the other operates on each element from the first and returns the original array
