
#######################################
# BLOCK PROC LAMDA examples begin
#######################################

## BLOCK Examples

# Block in "curly braces" format
[1,2,3].each { |n| puts n * 2 }

# Block in "do and end" format
[1,2,3].each do |n|
  puts n * 2
end



## PROC Examples 

# The '&' tells ruby to turn the proc into a block
p = Proc.new { |x| puts x * 2 }
[1,2,3].each(&p)

# The body of the Proc object gets executed when called
proc = Proc.new { puts "Hello World" }
proc.call



## LAMBDA Examples            

lam = lambda { |n| puts n * 2 }
[1,2,3].each(&lam)

lam = lambda { puts "Hello World" }
lam.call


proc.class
lam.class


# What is the difference?
#
# A lambda is a proc, but of a different flavor
#
# 01 a lambda checks the number of arguments passed to it, a proc does not.
#
# 02 when a lambda returns, it passes control back to the calling method; 
#    when a proc returns, it does so immediately, without going back to the calling method.
#
def lambda_test
  lam = lambda { return }
  lam.call
  puts "Hello world"
end

# calling lambda_test prints 'Hello World'
lambda_test  


def proc_test
  proc = Proc.new { return }
  proc.call
  puts "Hello world"
end

# calling proc_test prints nothing
proc_test  



## CLOSURE
#
# A Proc is a closure; it remembers the context in which it was defined, 
# and it uses that context whenever it is called. The context includes 
# the value of self, the constants, class variables, local variables, 
# and any captured block.


# Example 1

def counter
  n = 0
  return Proc.new { n += 1 }
end

a = counter
a.call        # returns 1
a.call        # returns 2

b = counter
b.call        # returns 1
a.call        # returns 3



# Example 2

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
# access to the local variable a, instance variable @a, class variable @@a, 
# and constant CONST. We call the block outside the scope of the object that 
# contains these values, and they are still available via the closure. 
# If we then call the object to change some of the values, 
# the values accessed via the closure also change.
#
#
#
#######################################
# BLOCK PROC LAMDA examples end
#######################################

