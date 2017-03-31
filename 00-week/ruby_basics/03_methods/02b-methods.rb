# The way you modify objects is through methods.
# methods contain sets of instructions.
# the Ruby language already contains many methods as part of the language.
#
# For example, there is a set of instructions that knows how to capitalize each letter in a string object. 
# That set of instructions method name is ".upcase"

"davis".upcase # => "DAVIS"


# You can make methods, too!

def is_this_a_method?
  "Yes, this is a method!" 
  # "Yes, this is a method!" is an object. 
  # Because this is the last object in the method, its address will be returned.
end

is_this_a_method? # => "Yes, this is a method!"

# TIP: in your editor type "def" and hit the tab key...you should see this...
def method_name
	
end
