# BLOCK PROC LAMBDA: Proc intro
#
# A Proc is just a way of storing code in an object
# It's just like a method in that it takes parameters, evaluates
# code, and then returns a result.
square_it_proc = Proc.new { |num| num * num }


# You tell a Proc to execute with the .call method
square_it_proc.call 5  # => 25
square_it_proc.call 10 # => 100

# Compare it to a method
def square_it_method(num)
  num * num
end
square_it_method 5    # => 25
square_it_method 10   # => 100

# Why bother saving our blocks as procs? There are two main advantages:
#  1. Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
#  2. Unlike blocks, procs can be called over and over without rewriting them. 
# This prevents you from having to retype the contents of your block every time 
# you need to execute a particular bit of code.
