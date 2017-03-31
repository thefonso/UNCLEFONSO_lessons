# 2. Air Conditioning
print "What is the current temperature? "
current_temperature = gets.chomp.to_f
print "Is the A/C currently functional? (y or n)"
is_functional = gets.chomp.downcase
print "What do you wish the temperature is? "
desired_temperature = gets.chomp.to_f

if current_temperature > desired_temperature && is_functional == 'y'
  puts "Turn on the A/C Please"
elsif current_temperature > desired_temperature && is_functional == 'n'
  puts "Fix the A/C now!  It's hot!"
else
  puts "Fix the A/C whenever you have the chance...  It's cool..."
end
