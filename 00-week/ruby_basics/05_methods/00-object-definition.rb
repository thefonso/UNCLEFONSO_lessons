# Before we start talking about methods. I want to give a quick overview of the concept of an Object.
# So what is an Object?
#
# Classes are containers for methods. A method contains lines of instructions. 
# Classes are the blueprint from which individual objects are created.
#
# We create an Object when we instantiate a Class.

# take a glance at this example, we will go over it in the next sections.
class Cat
	def speak
		"meow"
	end
end

#We create an Object when we instantiate a Class.
spot = Cat.new

#our spot Object is instatiated so now we can call a method on it...
spot.speak # => "meow"


#NEXT: let's talk about methods and classes in that order
