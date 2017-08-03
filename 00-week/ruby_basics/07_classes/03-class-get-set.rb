# CLASSES: get and set
#
# another way of writing get and set

class Car
  # we call methods like this a "setter"
  def set_miles(miles)
    @miles = miles
  end

  # we call methods like this a "getter"
  def get_miles
    @miles
  end
end

car = Car.new
car.set_miles 1000
car.get_miles # => 1000

car.instance_variables              # => [:@miles]
car.instance_variable_get '@miles' # => 1000


