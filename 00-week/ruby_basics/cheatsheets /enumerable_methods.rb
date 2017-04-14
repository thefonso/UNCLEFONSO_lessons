###Ruby Enumerable Method Examples
# http://ruby-doc.org/core/classes/Enumerable.html

# Ruby's Enumerable module is packed with methods for all kinds of tasks. Most likely if you can imagine a use for the 
# each method other than simply iterating, there is a good change a method exists to do what you had in mind. 
# For example if your looking to find a member within an Array, Hash, etc simply use the #find method instead of 
# iterating using #each.

# Our test subject for the next few examples will be the following array:

    vehicles = %w[ car truck boat plane helicopter bike ]

##Standard Iteration With Each
#
# Standard iteration is performed using the **each** method. The sample code below simply outputs a list of our vehicles.

    vehicles.each do |vehicle|
      puts vehicle
    end

##Searching Members With Grep
#
# The **grep** method allows us to 'search' for members using a regular expression. 
# Our first example below returns any member which contains an 'a'. The grep method also accepts a block, 
# which is passed each matching value, 'collecting' the results returned and returning those as shown 
# in the second example.

    vehicles.grep(/a/)
    # => ["car", "boat", "plane"]

    vehicles.grep(/a/) { |v| v.upcase } 
    # => ["CAR", "BOAT", "PLANE"]

##Evaluating All Members With All?
#
#The **all?** method accepts a block and simply returns either true or false based on the evaluation within the block.

    vehicles.all? { |v| v.length >= 3 }
    # => true

    vehicles.all? { |v| v.length < 2 }
    # => false

##Checking Evaluation For A Single Using Any?
#
# The **any?** method compliments **all?** in the fact that when the block evaluates to true at any time, 
# then true is returned.

    vehicles.any? { |v| v.length == 3 }
    # => true

    vehicles.any? { |v| v.length > 10 }
    # => false

##Working With Complex Data
#
# For our next examples we will be working with vehicles as well, however more complex data structures using Hash's. 
# Below is the test data. *Yes planes have landing gear, but lets not count those wheels for now ;)*

    vehicles = []

    vehicles << {
        :name => 'Car',
        :wheels => 4,
        :classes => [:ground],
      }
    vehicles << {
        :name => 'Truck',
        :wheels => 4,
        :classes => [:ground],
      }
    vehicles << {
        :name => 'Boat',
        :wheels => 0,
        :classes => [:water],
      }
    vehicles << {
        :name => 'Plane',
        :wheels => 0,
        :classes => [:air],
      }
    vehicles << {
        :name => 'Helicopter',
        :wheels => 0,
        :classes => [:air],
      }
    vehicles << {
        :name => 'Bike',
        :wheels => 2,
        :classes => [:ground],
      }  
    vehicles << {
        :name => 'Sea Plane',
        :wheels => 0,
        :classes => [:air, :ground],
      }

##Collecting A List
#
# The **collect** method is meant for this very task. Collect accepts a block whose values are collected into an array. This is commonly used in conjunction with the **join** method to create strings from complex data.

    vehicles.collect { |v| v[:name] } 
    # => ["Car", "Truck", "Boat", "Plane", "Helicopter", "Bike", "Sea Plane"] 

    vehicles.collect { |v| v[:name] }.join ', ' 
    # => "Car, Truck, Boat, Plane, Helicopter, Bike, Sea Plane"

##Finding Members Using The Find Method
#
# The **find** and **find_all** methods are the same although different in the obvious fact that one halts iteration after it finds a member, the other continues and finds the rest.
#
# Consider the following examples, we are simply trying to find members that match names, have many wheels, or are ground or air based. The collect method is used to collect arrays of the names for demonstration display purposes, instead of displaying data from the #inspect method.

    vehicles.find { |v| v[:name] =~ /Plane/ }[:name]
    # => "Plane"

    vehicles.find_all { |v| v[:name] =~ /Plane/ }.collect { |v| v[:name] } 
    # => ["Plane", "Sea Plane"]

    vehicles.find_all { |v| v[:wheels] > 0 }.collect { |v| v[:name] } 
    # => ["Car", "Truck", "Bike"]

    vehicles.find_all { |v| v[:classes].include? :ground }.collect { |v| v[:name] } 
    # => ["Car", "Truck", "Bike", "Sea Plane"]

    vehicles.find_all { |v| v[:classes].include? :air }.collect { |v| v[:name] } 
    # => ["Plane", "Helicopter", "Sea Plane"]

##Iterating With Storage Using Inject
#
# When you are looking to collect values during iteration the **inject** method is the perfect one for the job. This method accepts a initialization parameter which is 0 and [] in the case below, this is then passed

    p vehicles.inject(0) { |total_wheels, v| total_wheels += v[:wheels] } 
    # => 10

    p vehicles.inject([]) { |classes, v| classes + v[:classes] }.uniq 
    # => [:ground, :water, :air]

### sources

#[(the wayback machine) http://vision-media.ca/resources/ruby/ruby-enumerable-method-examples](https://web.archive.org/web/20091224153844/http://vision-media.ca/resources/ruby/ruby-enumerable-method-examples)

#[http://ruby-doc.org/core/classes/Enumerable.html](http://ruby-doc.org/core/classes/Enumerable.html)