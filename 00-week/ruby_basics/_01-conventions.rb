# In the notes, examples and cheatsheets provided, I use a few conventions in our code to make it easy
# to see the results of expressions. To show the results of a line, we use the following notation...
# the hash rocket "# =>"
 
myArray = ["1","2","3"]

myArray.collect{|i| i.to_i} # => [1, 2, 3]
