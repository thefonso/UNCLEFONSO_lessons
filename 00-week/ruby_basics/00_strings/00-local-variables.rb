# STRINGS: local variables
#
# When Ruby wants to store a value, it finds available memory in an area called the heap, 
# it then puts the value there.
# But how will you know where you put your value? You need something to keep track of its address.
# We can use variables for this.
# Variables are like little fingers that point to memory addresses! 
# They let you keep track of where our values are -- so you can access values through variables.


five = 5      # five is a variable, 5 is the value it is pointing to


# variables can be set to point to new values

five            # => 5
five = "five"
five            # => "five"


# In Ruby we name long variables with snake_case
this_is_an_example_of_snake_case = "it uses underscores where the spaces go" # !> assigned but unused variable - this_is_an_example_of_snake_case

# Constants are definitions that can be recalled later. They can't be changed once defined
# Define them with all upper case
ANSWER_TO_EVERYTHING = 42


### Excercise: write your own variables



# TERMS
#
# Stack:
#
# When a function or a method calls another function which in turns calls another function etc., the execution of all those functions remains suspended until the very last function returns its value.
#
# This chain of suspended function calls is the stack, because elements in the stack (function calls) depend on each other.
#
# The stack is important to consider in exception handling and thread executions.
#
# Heap:
#
# The heap is simply the memory used by programs to store variables. Element of the heap (variables) have no dependencies with each other and can always be accessed randomly at any time.
#
# I like the accepted answer better since it's even more low level.

# you can see the memory location with the ruby .object_id method
five.object_id # => 70101932257160

