# QUESTION: What is the relationship between...
# attr_accessor
# attr_reader
# attr_writer
#
# ANSWER:
# The attr_accessor is actually the reader and writer combined

class Person
  attr_accessor :name
end

# is the same as

class Person
  def initialize(name)
    @name = name  
  end
  attr_reader :name
  attr_writer :name
end

# is the same as 

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

# QUESTION: 
# Why use Ruby's attr_accessor, attr_reader and attr_writer?


# ANSWER:
# You may use the different accessors to communicate your intent to someone reading your code, and make it easier to write classes which will work correctly no matter how their public API is called.

class Person
  attr_accessor :age
  ...
end
#Here, I can see that I may both read and write the age.

class Person
  attr_reader :age
  ...
end
#Here, I can see that I may only read the age. Imagine that it is set by the constructor of this class and after that remains constant. If there were a mutator (writer) for age and the class were written assuming that age, once set, does not change, then a bug could result from code calling that mutator.

#But what is happening behind the scenes?

# If you write:

attr_writer :age
# That gets translated into:

def age=(value)
  @age = value
end
# If you write:

attr_reader :age
# That gets translated into:

def age
  @age
end
# If you write:

attr_accessor :age
# That gets translated into:

def age=(value)
  @age = value
end

def age
  @age
end

# Knowing that, here's another way to think about it: 
# If you did not have the attr_... helpers, and had to write the accessors yourself, 
# would you write any more accessors than your class needed? 
# For example, if age only needed to be read, would you also write a method allowing it to be written?
