# In the notes, examples and cheatsheets provided, 
# To show the results of a line, we use the following notation...
# the hash rocket "# =>" for example...
 
# here we initiate an Array of numbers as strings.
myArray = ["1","2","3"]

# here we run an operation to convert the number strings into actual numbers.
# we use the "# =>" and press "command+r" to get the result.
myArray.collect{|i| i.to_i} # => [1, 2, 3]

# For more complicated output, such as from a print statement, it'll be placed below the code.
