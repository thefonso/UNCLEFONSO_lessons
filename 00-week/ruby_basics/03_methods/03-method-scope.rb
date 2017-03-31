# When you make a method, remember...
# it doesn't know about anything outside of itself, 
#
# this is called scope.
#
# So let's start with a variable called twelve
# and set twelve to be assigned the number 12
twelve = 12

# using our hash rocket # => let's see what "twelve" points to.
twelve # => 12

# Now let's create another variable twelve inside a method and set it equal to 14
def my_own_little_world
	twelve = 14
	return twelve
end

# using # => let's see what the value of our first twelve is.

my_own_little_world # =>

twelve     # =>

