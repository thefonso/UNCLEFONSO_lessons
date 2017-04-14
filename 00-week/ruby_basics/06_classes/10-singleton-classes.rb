# CLASSES: singleton class
#
# So an object is defined by its class, but it also
# can have its own unique behaviour by defining
# methods on a singleton class.

# Singleton classes don't have names

# A Singleton class is an anonymous class that is created by subclassing the class associated with a particular object. 
# They are another way of extending the functionality associated with just ONE object.


class Speak 
  def hello
    p "hello"
  end
end

foo = Speak.new
foo.hello # => "hello"

# Now let's say we need to add class-level functionality to just this ONE instance:
 	
class << foo
  attr_accessor :name
  def hello
    "hello. I'm " +  @name + "\n"
  end
end

foo.name = "UncleFonso"
foo.hello        # => "hello. I'm UncleFonso\n"

# We've customized foo without changing the characteristics of Speak.


# >> "hello"
