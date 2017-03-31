# Define a module
module MyModule
  def my_method
    "Hello World"
  end
end

# Define a class
class MyClass
  include MyModule
end

# Instantiate the class
my_class = MyClass.new

# Call the modules methods as a class instance method
my_class.my_method # => "Hello World"




# Enumerables
# After including the Enumerable module on line 28, 
# I define an .each method on line 45,
# This allows for other enumerables like .map to work on this class (line 47)

class MyClass

    include Enumerable

    attr_accessor :attribute_array

    def initialize(attribute_value)
        @attribute_array = attribute_value
    end

    def each(&block)
        @attribute_array.each do |member|
            block.call(member)
        end
    end

end

my_class = MyClass.new( [1, 2, 3, 4, 5] )
my_class.each { |value| p "*** #{value} ***"} # => [1, 2, 3, 4, 5]
my_class.map { |value| p "*** #{value} ***"} # => ["*** 1 ***", "*** 2 ***", "*** 3 ***", "*** 4 ***", "*** 5 ***"]



module Inject
  def inject(n)
    # the .each below doesn't have a variable.
    # Ruby is assuming you're referring to the "n" variable,
    # The first variable it finds in the list of attributes
    each do |value|
      n = yield(n, value)
    end
    n
  end

  def sum(initial = 0)
    inject(initial) { |n, value| n + value }
  end

  def product(initial = 1)
    inject(initial) { |n, value| n * value }
  end
end

# We can then test this by mixing it into some built-in classes.
class Array
  include Inject
end

[ 1, 2, 3, 4, 5 ].sum # => 15
[ 1, 2, 3, 4, 5 ].product # => [[1], [2], [3], [4], [5]]


class Range
  include Inject
end

(1..5).sum  # => 15
(1..5).product # => 120
('a'..'m').sum("Letters: ") # => "Letters: abcdefghijklm"


# >> "*** 1 ***"
# >> "*** 2 ***"
# >> "*** 3 ***"
# >> "*** 4 ***"
# >> "*** 5 ***"
# >> "*** 1 ***"
# >> "*** 2 ***"
# >> "*** 3 ***"
# >> "*** 4 ***"
# >> "*** 5 ***"
