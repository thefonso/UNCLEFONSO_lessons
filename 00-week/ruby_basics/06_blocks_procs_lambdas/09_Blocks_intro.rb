# A block is a set of Ruby statements and 
# expressions defined with "{ }" or "do end" pair.

# Let's start with an Array
ary = [3,2,1]               # => [3, 2, 1]

# and here is our block in "{ }" format
ary.map! { |num| num * 2 }
ary                         # => [6, 4, 2]

# here is the same block in "do end" format
ary.map! do |num|
  num * 2
end
ary                         # => [12, 8, 4]

# Blocks can be combined with methods like .each and .times to execute 
# an instruction for each element in a collection (like a hash or array)

ary.each do |num|
  puts num
end
# ==> Prints 1, 2, 3 on separate lines

ary.each { |num| puts num }
# ==> Prints 1, 2, 3 on separate lines

# A Block is a closure; it remembers the context in which it was defined, 
# and it uses that context whenever it is called. The context includes 
# the value of self, the constants, class variables, local variables, 
# and any captured block.

class BlockExample
	CONST = 0
	@@a = 3
	def return_closure
		a=1
		@a = 2
		lambda { [ CONST, a, @a, @@a, yield ] }
	end
	def change_values
		@a += 1
		@@a += 1 
	end
end


eg = BlockExample.new
block = eg.return_closure { "original" }
block.call # => [0, 1, 2, 3, "original"]
block.call # => [0, 1, 2, 3, "original"]

# Here, the return_closure method returns a lambda that encapsulates 
# access to the local vari- able a, instance variable @a, class variable @@a, 
# and constant CONST. We call the block outside the scope of the object that 
# contains these values, and they are still available via the closure. 
# If we then call the object to change some of the values, 
# the values accessed via the closure also change.