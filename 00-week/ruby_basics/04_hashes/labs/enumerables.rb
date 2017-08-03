# LAB Enumerables
#
#
# Ruby's Enumerable module has methods for all kinds of tasks. Most likely if you can imagine a use for the #each method 
# other than simply iterating, there is a good change a method exists to do what you had in mind. 
#
# Arrays and hashes are Enumerable. 
#
# To see if you can call these methods, you can check if an instance responds to a particular method 
# or you can test the instance or class with the Enumerable key word
#

# in irb

>> a = [1,2,3]
>> => [1, 2, 3]
>> a.respond_to? :any?
>> => true
>> a.is_a? Enumerable
>> => true
>> Array < Enumerable
>> => true


# Try this to see all of the classes:


ObjectSpace.each_object(Class) {|cl| puts cl if cl < Enumerable}


# Our test subject for the next few examples will be the following array:


vehicles = %w[ car truck boat plane helicopter bike ]


###Standard Iteration With Each

# Standard iteration is performed using the **each** method. This is typical in many languages. 
# For instance in PHP this would be **for each** however in Ruby this is not built-in this 
# is a method call on the vehicles array object. The sample code below simply outputs a list of our vehicles.


vehicles.each do |vehicle|
  puts vehicle
end

###Modifying Every Member with Map

# The **map** method allows us to modify each member in the same way 
# and return a new collection with new members that were produced by the code inside our block.


vehicles.map { |v| v.upcase }
# => [" CAR" , " TRUCK" , " BOAT" , " PLANE" , " HELICOPTER" , " BIKE" ]


###Select, detect, reject
# Enumerable provides several functions for filtering your collections.

[1,2,3,4,5].select { |i| i > 3 }
# => [4,5]

[1,2,3,4,5].detect { |i| i > 3 }
# => 4

[1,2,3,4,5].reject { |i| i > 3 }
# => [1,2,3]



###Searching Members With Grep

# The **grep** method allows us to 'search' for members using a regular expression. Our first example below returns any member which contains an 'a'. The grep method also accepts a block, which is passed each matching value, 'collecting' the results returned and returning those as shown in the second example.


vehicles.grep /a/ # => [" car" , " boat" , " plane" ]

vehicles.grep(/a/) { |v| v.upcase } # => [" CAR" , " BOAT" , " PLANE" ]


###Evaluating All Members With All?

# The **all?** method accepts a block and simply returns either true or false based on the evaluation within the block.


vehicles.all? { |v| v.length >= 3 }# => true

vehicles.all? { |v| v.length < 2 }# => false


###Checking Evaluation For A Single Using Any?

# The **any?** method compliments **all?** in the fact that when the block evaluates to true at any time, then true is returned.


vehicles.any? { |v| v.length == 3 }# => true

vehicles.any? { |v| v.length > 10 }# => false


###Working With Complex Data

# For our next examples we will be working with more vehicles. 

# again...in irb


 load ‘vehicles.rb’
 $vehicles

###Collecting A List

# The **collect** method is meant for this very task. Collect accepts a block whose values are collected into an array. 
# This is commonly used in conjunction with the **join** method to create strings from complex data.

$vehicles.collect { |v| v[:name] } 
# => [" Car" , " Truck" , " Boat" , " Plane" , " Helicopter" , " Bike" , " Sea Plane" ] 

$vehicles.collect { |v| v[:name] }.join ', ' 
# => " Car, Truck, Boat, Plane, Helicopter, Bike, Sea Plane"


###Finding Members Using The Find Method

# The **find** and **find_all** methods are the same although different in the obvious fact that one halts iteration after it finds a member, the other continues and finds the rest.<br />Consider the following examples, we are simply trying to find members that match names, have many wheels, or are ground or air based. The collect method is used to collect arrays of the names for demonstration display purposes, instead of displaying data from the #inspect method.


$vehicles.find { |v| v[:name] =~ /Plane/ }[:name]# => " Plane" 

$vehicles.find_all { |v| v[:name] =~ /Plane/ }.collect { |v| v[:name] } # => [" Plane" , " Sea Plane" ]

$vehicles.find_all { |v| v[:wheels] > 0 }.collect { |v| v[:name] } # => [" Car" , " Truck" , " Bike" ]

$vehicles.find_all { |v| v[:classes].include? :ground }.collect { |v| v[:name] } # => [" Car" , " Truck" , " Bike" , " Sea Plane" ]

$vehicles.find_all { |v| v[:classes].include? :air }.collect { |v| v[:name] } # => [" Plane" , " Helicopter" , " Sea Plane" ]


###Iterating With Storage Using Inject
#
# When you are looking to collect values during iteration the **inject** method is the perfect one for the job. This method accepts an initialization parameter which is 0 and [] in the case below, this is then passed


p $vehicles.inject(0) { |total_wheels, v| total_wheels += v[:wheels] } # => 10

p $vehicles.inject([]) { |classes, v| classes + v[:classes] }.uniq # => [:ground, :water, :air]




# references:
#
# docs:<br />http://ruby-doc.org/core/classes/Enumerable.html<br />
