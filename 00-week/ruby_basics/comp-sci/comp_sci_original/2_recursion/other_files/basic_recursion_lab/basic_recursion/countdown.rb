require 'ruby-prof'
# Profile the code
RubyProf.start

# def countdown(n)
#   puts n
#   if n > 0
#     countdown(n-1)
#   else
#     puts "Blast Off!"
#   end
# end

## Factorial with a Loop
# def loop_factorial(n)
#   total = 1
#   for x in (1..n)
#     total *= x
#   end
#   total
# end

## Factorial Recursively
# def rec_factorial(n)
#   if n > 1
#     n * rec_factorial(n-1)
#   else
#     1
#   end
# end

def fibonacci(n)
  if n <= 1
    0
  elsif n == 2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

def fibonacci_iterative(n)
  num = 0
  num1 = 1

  n.times do
    num, num1 = num1, num + num1
  end
  num
end

puts fibonacci_iterative(30)

result = RubyProf.stop
# Print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)