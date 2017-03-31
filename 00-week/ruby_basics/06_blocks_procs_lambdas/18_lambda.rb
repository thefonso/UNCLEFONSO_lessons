# TODO: merge 17 and 18
# Lambdas are defined using the following syntax:

lambda { |param| block }

# Lambdas are useful in the same situations in which you'd use a proc. 

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda{|x| x.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)