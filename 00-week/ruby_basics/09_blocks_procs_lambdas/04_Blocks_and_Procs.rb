# Blocks are not objects, and this is one of the very few exceptions to the "everything is an object" rule in Ruby.

# Because of this, blocks can't be saved to variables and don't have all the powers and abilities of a real object. 
# For that, we'll need... Procs

# a Proc is like a "saved" block: just like you can give a bit of code a name and turn it into a method, 
# you can name a block and turn it into a proc. Procs are great for keeping your code DRY, 
# which stands for Don't Repeat Yourself. With blocks, you have to write your code out each time you need it; 
# with a proc, you write your code once and can use it many times!

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

# multiples_of_3 = Prac.new {|n| n % 3 == 0}

# The '&' tells ruby to turn the proc into a block
(1..100).to_a.select(&multiples_of_3) 



