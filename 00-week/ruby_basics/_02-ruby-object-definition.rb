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

#We create an Object when we instantiate a Class.
spot = Cat.new

#our spot Object is instatiated so now we can call a method on it...
spot.speak # => "meow"

# Ok GOOD. So this makes sense in the old-fashion Object oriented definition but...

# Question. They say: "Everything in Ruby is an object" What does this mean?

# Answer.

# journey into how ruby works for a bit...

# All classes in Ruby are derived from a parent class `Object`.
# The definition of class `Object` mixes-in the methods defined in the `Kernel` module. 
# These methods are therefore available within every object in the system. 

spot.class # => Cat
Cat.ancestors # => [Cat, Object, Kernel, BasicObject]


# Even if you're writing a simple Ruby program without classes, you're actually working inside the larger 'class Object'.
# This is why we say "everything in Ruby is an Object"


# ==== expirimental ================================
#
# The .owner and the .receiver methods can be used to ask a method where it lives and who it can be called on. 
#

method(:puts).owner # => Kernel

method(:puts).receiver # => main

# Kernel.private_method_defined?(:puts) # => true
Kernel.ancestors # => [Kernel]

# what .method ask a class to list its public and private methods?
Object # => Object

puts # => nil

# Since methods like puts are defined on the Kernel and mixed into the Object class, they are accessible everywhere.

# NOTE: We can actually see 'puts' in Kernel in the Ruby source code: http://bit.ly/2nwdfx0
#
# Virtually all Ruby objects inherit from Object and have access to the methods defined in the Kernel module, 
# so Kernel’s private instance methods are accessible virtually anywhere in a Ruby program, regardless of self.
 
# The Kernel module is mixed into the Object class, which means all methods (including private methods!) defined on this module 
# are accesible to all Ruby objects, making them “global” functions.

# Even though a method’s implicit receiver is self, the context of self changes depending on which class you are in; 
# this is particularly important when dealing with “global” functions.
# >> 
