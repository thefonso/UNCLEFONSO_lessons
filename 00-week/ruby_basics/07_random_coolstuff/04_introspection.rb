# see the cheatsheet
# reflection-introspection.rb 

# the most important ones are (we'll talk more about
# what ancestors and superclasses are in a little bit)
"abc".class         # => String
String.ancestors    # => [String, Comparable, Object, Kernel, BasicObject]
Fixnum.superclass   # => Integer


# puts calls to_s, it returns a string for end users
# p calls inspect, it returns a string for developers
# Strings for example, get quotes placed around them.
"abc".inspect       # => "\"abc\""
"abc".to_s          # => "abc"
                    

require 'date'      
Date.today.inspect  # => "#<Date: 2014-06-18 ((2456827j,0s,0n),+0s,2299161j)>"
Date.today.to_s     # => "2014-06-18"