# Using set_miles and get_miles is kind of
# distracting. It's better to name your setters
# and getters the same as the variable they represent.

class Car
  def miles=(miles)
    @miles = miles
  end

  def miles
    @miles
  end
end

Car.instance_methods false # => [:miles=, :miles]

car = Car.new
car.miles = 1000  # Ruby knows this is the miles= method
car.miles         # => 1000
