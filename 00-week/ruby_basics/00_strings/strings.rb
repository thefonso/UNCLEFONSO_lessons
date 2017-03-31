
# string concatenation
p "Grape" + "fruit"

# string interpolation
name = "Clayton"
favorite_vodka = "Chopin"
p "My name is #{name} and my favorite vodka is #{favorite_vodka}"


# Print out "What is your first name?" on a new line
puts "what is your first name?"

# Create a variable "first" that is equal to the input, using gets.
# Then use string interpolation to print out what your first name is
first = gets.chomp
puts "your first name is #{first}"

# Do the same thing asking for your last name
puts "what is your last name?"
last = gets.chomp
puts "your last name is #{last}"

# Using your variables for first and last names, print out a statement declaring your full name
puts "your full name is #{first} #{last}"

# Create a variable "fullname" that is your first and last name
fullname = "#{first} #{last}"

# Now put your full name into a variable and add input for your address. Print out both.
puts "what is your address?"
address = gets.chomp
puts "your name is #{fullname} and you live at #{address}"
