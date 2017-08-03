# BLOCK PROC LAMBDA: yield part 2
#
# You can also pass parameters to yield!

def yield_name(name)
  puts "In the method! Let's yield."
  yield name
  puts "Block complete! Back in the method."
end


# Now call the method with your name!
yield_name("fonso"){ |name| puts "My name is #{name}." }


# >> In the method! Let's yield.
# >> My name is fonso.
# >> Block complete! Back in the method.
