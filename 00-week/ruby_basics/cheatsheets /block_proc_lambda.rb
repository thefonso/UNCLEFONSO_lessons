# http://ruby-doc.org/core-2.1.2/Proc.html

# EXAMPLES: 
# Here's an array we can use in the examples below
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Block 
# A Ruby block is just a bit of code that can be executed. 
# Block syntax uses either do..end or curly braces {}, like so:

floats.collect do |num|
   num*2 # => 2.4, 6.9, 1.82, 15.454, 22.84, 965.822
end


floats.collect{ |num| num*2 } # => [2.4, 6.9, 1.82, 15.454, 22.84, 965.822]

# Proc 
# Procs are easy to define! You just call Proc.new and pass in the block you want to save.
Proc.new {puts "hello"} 

# assign a proc to a variable name
round_down_proc = Proc.new {|x| x.floor}

# now you can call that proc using the "&" sign like so
ints = floats.collect(&round_down_proc) # => [1, 3, 0, 7, 11, 482]

# Lamda
# syntax looks just like a proc
Proc.new { puts "Hello!" } 

lambda { puts "Hello!" } 

# or just remember...
# lambda { |param| block }

# you can call a Lamda the same way you call a proc
round_down_lamda = lambda { |x| x.floor }

ints = floats.collect(&round_down_lamda) # => [1, 3, 0, 7, 11, 482]

# There are two main differences between Procs and Lambdas...
#
# 01 a lambda checks the number of arguments passed to it, while a proc does not.
# TODO: need example here


# 02 when a lambda returns, it passes control back to the calling method; 
#    when a proc returns, it does so immediately, without going back to the calling method.
def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

batman_ironman_lambda # => "Iron Man will win!"

# Above, the lambda goes back into the method after being called, 
# so the method returns the last code it evaluates: "Iron Man will win!"
# Below, the proc returns imediately without goig back to the method

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

batman_ironman_proc # => "Batman will win!"