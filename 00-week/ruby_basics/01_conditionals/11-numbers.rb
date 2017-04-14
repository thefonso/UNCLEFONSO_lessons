# A little something about numbers: 
# While you think of 10 and 10.0 as the same thing, Ruby does not.

# Example 
#float
10.0
#and Integer 10
10

# They are both numbers (notice that Numeric is in the ancestry)
10.0.class.ancestors    # => [Float, Numeric, Comparable, Object, Kernel, BasicObject]
10.class.ancestors  # => [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]


# but they have slightly different behaviour. For example, integer division gives an integer,
# but float division gives a float.
10    / 3 # => 3
10.0  / 3 # => 3.3333333333333335

# what if you want to convert them?
10.to_f   # => 10.0
10.0.to_i # => 10

# You can also use parentheses, they will take on the value of whatever is inside them
(1 + 2) * 3     # => 9
(91 + 2).even?  # => false

# Do challenges in the labs folder 