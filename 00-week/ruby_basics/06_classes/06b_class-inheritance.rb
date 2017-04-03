# Get, Set and INHERITANCE
#

# Define a class with an attribute with set and get methods
class MyClass

  def attribute_example=(attribute_example) # !> previous definition of attribute_example= was here
    @attribute_example = attribute_example
  end

  def attribute_example # !> previous definition of attribute_example was here
    @attribute_example
  end

end

# explanation of using = sign in method definitions
# http://rubylearning.com/satishtalim/ruby_syntactic_sugar.html



# Instantiate the class and use set and get methods
my_class = MyClass.new
my_class.attribute_example = 27
my_class.attribute_example



# attr_accessor does both get and set all at once
# Define a class with an attribute with attr_accessor
class MyClass
    attr_accessor :attribute_example # !> method redefined; discarding old attribute_example=
end

# Instantiate the class and use set and get method
my_class = MyClass.new
my_class.attribute_example = 23
my_class.attribute_example





# Define a class with an attribute with initializer
class MyClass
    attr_accessor :attribute_example # !> method redefined; discarding old attribute_example=

    def initialize(attribute_value)
        @attribute_example = attribute_value
    end

end


# Instantiate the class using .new
my_class = MyClass.new(22)
my_class.attribute_example





# Inheritance

# Define an parent Animal class
class Animal  
  def move  
    p "i can move!"  
  end  
end  

# Define a Mammal class that inherits from Animal
class Mammal < Animal
  def eat  
    p "i can eat! yum yum yum"  
  end 
  def speak
    p "i can speak"  
  end 
end  
  
# Define a Monkey class that inherits from Mammal
class Monkey < Mammal  
  def swing  
    p "i can swing!"  
  end 
  def speak
    p "HoWwOo WHoWo"  
  end 
end  

# Define a Dog class that inherits from Mammal
class Dog < Mammal  
  def speak
    p "WHOOF"
  end  
end  
  
# Instantiate a Monkey and show off what it can do 
timmy = Monkey.new
timmy.move # => "i can move!"
timmy.eat # => "i can eat! yum yum yum"
timmy.swing # => "i can swing!"
timmy.speak # => "HoWwOo WHoWo"

# Instantiate a Dog and show off what it can do
sammy = Dog.new  
sammy.move # => "i can move!"
sammy.eat  # => "i can eat! yum yum yum"
sammy.speak # => "WHOOF"



Animal.instance_methods(false) # => 


