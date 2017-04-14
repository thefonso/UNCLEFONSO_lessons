# Classes: Definition
#
# Classes are containers for methods.
# Class Example: Here I have a Cat class with a method called "speak"
# We often refer to methods as behaviors


class Cat
	def speak
		"meow"
	end
end

# When you have an object that uses those methods, we
# say it is an *instance* of that class.
#
# Now to create a Cat object instance do the following...
# Instantiate the class using .new

spot = Cat.new

# Cat.new creates a new Cat object as defined in the Cat class above.
# spot is a new *instance* of this object


# Each time I create a new instance I'm creating a different object
# using object_id for introspection we can see that these are two different objects
fluffy = Cat.new

spot.object_id 		# => 70365489595260
fluffy.object_id 	# => 70365489595240

# The instance keeps track of its class, so when you
# invoke a method on it, it finds the method by looking
# it up in the class.

spot.speak # => "meow"

# So, objects have methods, and those methods are
# defined in its class. 

