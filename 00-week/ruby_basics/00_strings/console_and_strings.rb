# Run Ruby files from the terminal
touch learning_strings.rb
mvim learning_strings.rb
ruby learning_strings.rb

# Print strings using "print" and "puts"
# p foo does puts foo.inspect, i.e. it prints the value of inspect
# instead of to_s, which is more suitable for debugging
# because you can tell the difference between 1, "1" and "2\b1",
# which you can't when printing without inspect).

puts "Hello World" # Does not return a value
p "Hello Sailor!" #Also returns a value

# String concatenation & interpolation
name = "David"
p "My name is" + name
p "My name is #{name}"

# Getting input using gets.chomp
name = gets.chomp #Gets input up to return (also stores return)
p "My name is #{name}"
