# STRINGS: local variables
# there are many different types of variables in Ruby, to keep it simple, we are going to start with Local variables. 

five = 5      # five is a variable, 5 is the value it is pointing to


# variables can be set to point to new values

five           # => 5
five = "five"
five           # => "five"


# In Ruby we name long variables with snake_case

this_is_an_example_of_snake_case = "it uses underscores where the spaces go" 

# Constants are definitions that can be recalled later. 
# They can not be changed once defined
# Define them with all upper case
ANSWER_TO_EVERYTHING = 42

# You can see the memory location with the ruby .object_id method
five.object_id # => 70325220536820
