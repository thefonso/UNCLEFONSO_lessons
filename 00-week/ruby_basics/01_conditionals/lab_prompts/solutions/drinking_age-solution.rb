# 1. Drinking age?
print "what is your age? "
age = gets.chomp.to_i
if age >= 21
  puts "you are a lush!"
else
  puts "quick kids, the parents are coming!"
end

# An alternative is to use a consolidated if statement.
puts "drink up!" if age > 21
