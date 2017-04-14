# CLASSES: Inheritance 
#
#

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


# introspection via .instance_methods
Animal.instance_methods(false) # => [:move]


# >> "i can move!"
# >> "i can eat! yum yum yum"
# >> "i can swing!"
# >> "HoWwOo WHoWo"
# >> "i can move!"
# >> "i can eat! yum yum yum"
# >> "WHOOF"

