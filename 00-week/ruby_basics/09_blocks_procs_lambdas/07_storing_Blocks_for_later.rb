# PROCS: storing blocks for later
# 
# Why bother saving our blocks as procs? There are two main advantages:
# 01. Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
# 02. Unlike blocks, procs can be called over and over without rewriting them. 
# This prevents you from having to retype the contents of your block every time 
# you need to execute a particular bit of code.

# Now that we know to use &block, we can do cool things like
# Store the block for later.
class CollegeStudent
  
  attr_accessor :do_when_twenty_one
  
  def initialize(age,&block)
    @age = age
    @do_when_twenty_one = block
  end
  
  def birthday!
    @age += 1
    return "#{@age}: study :(" unless @age == 21
    do_when_twenty_one.call @age
  end
  
end


pam = CollegeStudent.new 18 do |age|
  "#{age}: GET SAUCED!"
end
pam.birthday! # => "19: study :("
pam.birthday! # => "20: study :("
pam.birthday! # => "21: GET SAUCED!"
pam.birthday! # => "22: study :("

# Another example:
#
# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.
over_4_feet = Proc.new do |height|
    height >= 4
end

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

can_ride_1 = group_1.select(&over_4_feet) # => [4.1, 5.5, 6.1, 4.7]
can_ride_2 = group_2.select(&over_4_feet) # => [7.0, 6.2, 6.1, 4.4, 4.9]
can_ride_3 = group_3.select(&over_4_feet) # => [5.5, 5.1, 4.3, 4.9]

can_ride_1 # => [4.1, 5.5, 6.1, 4.7]
can_ride_2 # => [7.0, 6.2, 6.1, 4.4, 4.9]
can_ride_3 # => [5.5, 5.1, 4.3, 4.9]
