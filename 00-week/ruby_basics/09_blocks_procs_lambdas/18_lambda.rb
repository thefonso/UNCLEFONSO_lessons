# Lambdas are defined using the following syntax:

lambda { |param| block }

# Lambdas are useful in the same situations in which you'd use a proc. 

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda{|x| x.to_sym}

symbols = strings.collect(&symbolize)
