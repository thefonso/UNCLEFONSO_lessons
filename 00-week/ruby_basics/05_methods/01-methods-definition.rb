# "What are Ruby methods?" OR "Does Ruby have simple functions?"
# Yes and no. Ruby has methods that look like functions in languages such as C or Perl


def writeln(str)
  p(str)
end

writeln("Hello, World!") # => "Hello, World!"


# However, they're actually method calls with the receiver omitted. In this case, Ruby assumes the receiver is self.

# So, writeln resembles a function but it's actually a method belonging to class Object and sent as a message to the hidden receiver self. Ruby is a pure object-oriented language.

# Of course you can use such methods as if they were functions.

# So where do all these function-like methods come from?

# All classes in Ruby are derived from class `Object`. The definition of class `Object` mixes-in the methods defined in the `Kernel` module. These methods are therefore available within every object in the system.

# Even if you're writing a simple Ruby program without classes, you're actually working inside class Object.

# NOTE TO SELF: TODO visualize this in example

# SPECIAL NOTE
# Override a default method in Ruby
# +, -, and the like are not operators but method calls. They can, therefore, be overloaded by new definitions.	
class MyString < String
  def -(other)            # New method
    self[0...other.size]  # self truncated to other's size
  end
end