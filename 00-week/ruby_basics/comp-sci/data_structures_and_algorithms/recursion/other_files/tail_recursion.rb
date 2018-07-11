require 'ruby-prof'
# Profile the code
# RubyProf.start

def recursion(num, power)
  if power == 1
    return num
  else
    return num * recursion(num, power - 1)
  end
end

def tail_recursion(num, power, result)
  if power == 0
    return result
  else
    return tail_recursion(num, power - 1, result * num)
  end
end

puts "Please enter the number follow by the power:"

result = 1
num = gets.to_i
power = gets.to_i

# puts "Trad recursion: " + recursion(num, power).to_s

# puts "Tail recursion: " + tail_recursion(num, power, result).to_s
recursion(num, power)
tail_recursion(num, power, result)
# result = RubyProf.stop

# # Print a flat profile to text
# printer = RubyProf::FlatPrinter.new(result)
# printer.print(STDOUT)