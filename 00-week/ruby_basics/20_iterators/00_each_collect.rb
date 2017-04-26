# Why might you want to enumerate over items in an array.


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


