# CLASSES: variables
#
# There are four types of variable used in Ruby
#
# Local variables: Local variables are the variables that are defined in a method. 
#                  Local variables are not available outside the method.
                  localVar
#
# Instance Variables: Instance variables are available across methods for any particular instance of the object.
#                     Instance variables change from object to object.
                     @InstanceVar
#
# Class Variables: Class variables are available across different objects. 
#                  A class variable belongs to the class and is a characteristic of a class. 
                  @@ClassVar
#
# Global Variables: Class variables are not available across classes. 
#                   If you want to have a single variable, which is available across classes, 
#                   you need to define a global variable. 
                   $GlobalVar

class Customer
   @@no_of_customers=0
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   
   #To display a variable in a string precede it with the # symbol
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
   
   def total_no_of_customers()
      @@no_of_customers += 1  #Note the increment value here
      puts "Total number of customers: #@@no_of_customers"
   end
end

# Create Objects
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details() 
cust2.total_no_of_customers() 

# >> Customer id 1
# >> Customer name John
# >> Customer address Wisdom Apartments, Ludhiya
# >> Total number of customers: 1
# >> Customer id 2
# >> Customer name Poul
# >> Customer address New Empire road, Khandala
# >> Total number of customers: 2
