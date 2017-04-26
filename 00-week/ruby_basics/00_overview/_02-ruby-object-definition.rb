# So what is an Object?
#
# Classes are containers for methods. A method contains lines of instructions. 
# Classes are the blueprint from which individual objects are created.
#
# We create an Object when we instantiate a Class.
#
# for example...

class Cat
	def speak
		"meow"
	end
end

# We create an Object when we instantiate a Class.
spot = Cat.new

# our spot Object is instatiated so now we can call a method on it...
spot.speak # => "meow"

# Ok GOOD. So this makes sense in the old-fashion Object oriented definition but...

# Question: They say "Everything in Ruby is an object" What does this mean?

# Answer: Journey into how ruby works for a bit...

# All classes in Ruby are derived from a parent class `Object`.
# The definition of class `Object` mixes-in the methods defined in the `Kernel` module. 
# These methods are therefore available within every object in the system. 

Cat.ancestors # => [Cat, Object, Kernel, BasicObject]

# Notice how the .ancestors method tells us that our Cat inherits Object who inherits Kernal and then BasicObject? 

# Virtually all Ruby objects inherit from Object and have access to the methods defined in the Kernel module, 
# so Kernel’s private instance methods are accessible virtually anywhere in a Ruby program, regardless of self[1].

# The Kernel module is mixed into the Object class, which means all methods (including private methods!) defined on this module 
# are accesible to all Ruby objects, making them “global” functions.
#
# Even if you're writing a simple Ruby program without classes, you're actually working inside the larger class 'Object'.
# This is why we say "everything in Ruby is an Object"


# [1] to understand "self" take a look at _04-self.rb
