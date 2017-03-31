# When Ruby wants to store an object it finds available memory in an area called the heap, it then puts the object's data there.
# But how will we know where we put our object? We need something to keep track of its address.
# 
# Variables are like little fingers that point to memory addresses! 
# They let us keep track of where our objects are -- so you can access objects through variables.


five = 5      # five is a variable, 5 is the object it is pointing to


# variables can be set to point to new values

five            # => 5
five = "five"
five            # => "five"


# In Ruby we name long variables with snake_case
this_is_an_example_of_snake_case = "it uses underscores where the spaces go"

# Constants are definitions that can be recalled later. They can't be changed once defined
# Define them with all upper case
ANSWER_TO_EVERYTHING = 42


### Excercise: write your own variables



# TERMS
#
# heap: A very simple explanation is that the heap is the portion of memory where dynamically allocated memory resides
# Memory allocated from the heap will remain allocated until one of the following occurs:

# 1. The memory is free'd
# 2. The program terminates

# Contrast this with -stack- memory which is where local variables (those defined within a method) live. 
# Memory allocated on the stack generally only lives until the function returns 
# (there are some exceptions to this, e.g. static local variables).

# you can see the memory location with the ruby .object_id method
five.object_id # => 70173340725520
