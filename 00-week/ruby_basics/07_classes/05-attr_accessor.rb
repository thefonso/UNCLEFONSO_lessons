# In fact, this naming convention for setters and
# getters is so common that there is a method that
# will write them for you.

class Car
  attr_accessor 'miles'
end

Car.instance_methods false # => [:miles, :miles=]

car = Car.new
car.miles = 1000
car.miles # => 1000

car.instance_variables              # => [:@miles]
car.instance_variable_get '@miles'  # => 1000


# attr_accessor is an example of metaprogramming, 
# You can write methods yourself like attr_accessor
#
# NOTE:
# attr_accessor
# attr_reader
# attr_writer
#
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

