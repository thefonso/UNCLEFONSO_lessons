# BLOCK PROC LAMBDA: block intro
#
# A block is a set of Ruby statements and 
# expressions defined with "{ }" or a "do end" pair.

# Let's start with an Array
ary = [3,2,1]               # => [3, 2, 1]

# and here is our block in "{ }" format
ary.map! { |num| num * 2 }
ary                         # => [6, 4, 2]

# here is the same block in "do end" format
ary.map! do |num|
  num * 2
end
ary                         # => [6, 4, 2]

# Any Ruby method can accept a block. In fact any Ruby method does accept a block, 
# it will just silently ignore it unless it’s told to do something with it.
# Blocks can be combined with methods like .each and .times to execute 
# an instruction for each element in a collection (like a hash or array)

ary.each do |num|
  puts num
end
# ==> Prints 1, 2, 3 on separate lines

ary.each { |num| puts num }
# ==> Prints 1, 2, 3 on separate lines


# >> 3
# >> 2
# >> 1
# >> 3
# >> 2
# >> 1
