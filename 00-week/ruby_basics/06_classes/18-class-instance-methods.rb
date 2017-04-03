# Class Methods verses Instance Methods
#
# Class methods are methods that are called on a class and instance methods 
# are methods that are called on an instance of a class. 


### When would you use a Class Method?
# A Class Method is a piece of functionality that belongs to that class, but is not tied to any particular single instance.

class Basket
  class << self
    def find(id) # !> previous definition of find was here
      puts "finding basket with the id of #{id}"
    end
  end
end

# To use this method, you invoke it from the class:

basket = Basket.find('abc')

## In this case, we’re simply using the -find- method to encapsulate the process of retrieving a basket object from the database.



### When would you use Instance Methods?
# You use Instance Methods when you need to act on a particular instance of the class.

class Basket
  def self.find(id) # !> method redefined; discarding old find
    puts "finding basket with the id of #{id}"
  end
 
  def products
    []
  end
end

# In this example I’ve added a -products- Instance Method. This Instance Method only makes sense
# when we actually have an instance of the Basket class:

basket = Basket.new # => #<Basket:0x007f8b160bd260>
 
basket.products # => []

# If you try to call an Instance Method directly on the class, you will get an error:

Basket.products 
# undefined method `products' for Basket:Class (NoMethodError)


# And similarly, if you try to call a Class Method on an object instance, you will also get an error:

basket.find('def')
# undefined method `find' for #<Basket:0x007f8b160bd260> (NoMethodError)


# Conclusion
# You will often see Ruby classes that make use of Class Methods when they really should be using Instance Methods.
# Good object-oriented design is all about encapsulation and modelling behaviour as objects.
