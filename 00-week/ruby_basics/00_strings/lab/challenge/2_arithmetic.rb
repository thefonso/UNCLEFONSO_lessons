# navigate above to the lab folder then...
# fill out the method below, then run the tests with
#   $ rspec spec/2.rb


# Given two numbers, a and b, return half of whichever is smallest, as a float
#
# arithmetic2(1,2)    # => 0.5
# arithmetic2(19,10)  # => 5.0
# arithmetic2(-6,-7)  # => -3.5

def arithmetic2(a,b)  
  min = if a < b
    a
  else
    b
  end
  
  min / 2.0
end

arithmetic2(1,2) # => 0.5