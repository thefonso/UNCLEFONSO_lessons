# A great use for modules is as namespaces: You can do all sorts
# of stuff in a module, and it keeps it contained within that
# module. This prevents conflicts with similarly named things
# in other places.

# Example:
# Maybe you want to try the same problem several days in a row,
# to see how your approach changes over time.
module FirstDaySolutions
  class MinFinder
    def initialize(a,b)
      @a = a
      @b = b
    end
    def solve
      if @a < @b then @a else @b end
    end
  end
end

module SecondDaySolutions
  class MinFinder
    def initialize(a,b)
      @elements = [ a , b ]
    end
    def solve
      @elements.min
    end
  end
end

day1 = FirstDaySolutions::MinFinder.new 10 , 5
day2 = SecondDaySolutions::MinFinder.new 10 , 5
day1          # => #<FirstDaySolutions::MinFinder:0x007ff31c09fdc8 @a=10, @b=5>
day2          # => #<SecondDaySolutions::MinFinder:0x007ff31c09fda0 @elements=[10, 5]>
day1.solve    # => 5
day2.solve    # => 5

