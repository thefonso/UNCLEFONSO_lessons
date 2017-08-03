# BLOCK PROC LAMBDA: yield part 1
# 
# Ruby methods have a way of transferring control from the calling method to the block and back again. 
# We can build this into the methods we define by using the "yield" keyword.

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> WE ARE IN THE block!" }

# >> We're in the method!
# >> Yielding to the block...
# >> >>> WE ARE IN THE block!
# >> We're back in the method!
