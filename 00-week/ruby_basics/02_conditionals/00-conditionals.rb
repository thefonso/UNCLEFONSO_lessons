# CONDITIONALS
#
# (run "command + r" to see results of this code at the bottom)
#
# Right below we have a few examples of conditonal statements


### Conditional Statements

# If/else
if true
  p "Its true!"
end  

if (2 + 2) == 5
  p "We have a problem"
end

if (2 + 2) == 5
  p "We have a problem"
else
  p "its not 1984 yet"
end

if (2 + 2) == 5
  p "We have a problem"
elsif (2 + 2) != 5
  p "its not 1984 yet"
else
  p "I will never be seen"
end

# unless
name = "fonso"
unless name == "david"
  p "Your name is definitely not david"
end

# switch/case
grade = "B"
case grade
  when "A"
    puts 'Well done!'
  when "B"
    puts 'Try harder!'
  when "C"
    puts 'You need help!!!'
  else
    puts "You just making it up!"
end

# review the ruby_operators.md

