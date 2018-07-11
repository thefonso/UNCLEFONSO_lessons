require 'ruby-prof'
# Profile the code
RubyProf.start

#*** fib returns the nth element in the sequence, not the whole sequence up to n ***

# STEP 1: Let the class write the iterative version
def fib(n)
  if n < 2
  	n
  else
    num1, num2 = 0,1
    while n > 1 #since the 0 and 1 steps were already done for the n<2 case
    n-=1
    num2 = num1 + num1 = num2 #as in: num2 = old_num1 + (num1 = old_num2, returns old_num2)
    # OR
    # tmp = num2
    # num2 += num1
    # num1 = tmp
    end
    num2
  end
end

# STEP 2: Investigate the method calls in:
# 10.times do |i|
# 	puts "#{i}: #{fib(i)}"	
# end

# STEP 3: Identify the self-similar component (A: fib(n) is fib(n-1) + fib(n-2), this is a multiple recursion)

# STEP 4: Identify the base case (A: when n < 2 we can return n as is)

# STEP 5: Discuss implementation

def fib_r(n)
	n < 2 ? n : fib_r(n-1)+fib_r(n-2)
end

# STEP 6: Investigate the method calls in:
# 10.times do |i|
# 	puts "#{i}: #{fib_r(i)}"	
# end

result = RubyProf.stop

# Print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)