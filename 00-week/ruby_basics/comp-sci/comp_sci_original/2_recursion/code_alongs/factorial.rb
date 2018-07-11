require 'ruby-prof'
# Profile the code
RubyProf.start

# STEP 1: Non recursive Factorial
# 
# Have the students call out the steps:
def factorial(n)
  product = 1
  for i in (1..n)
    product *= i
  end
  product
end

# STEP 2: Investigate the method calls in:
# puts factorial(140)
# puts factorial(141)
# puts factorial(142)

# STEP 3: Identify the self-similar component

# STEP 4: Identify the base case (when n = 0)

# STEP 5: Discuss 

# STEP 6: Factorial with Recursion
def factorial_r(n)
  n > 0 ? n * factorial_r(n-1) : 1
end

# STEP 7: Investigate the method calls in:
# puts factorial_r(140)
# puts factorial_r(141)
# puts factorial_r(142)

puts factorial(500)

# STEP 8: Why is factorial faster than factorial_r? What are the pro's and con's of factorial_r?
# Answers:
# It's not always faster, depends on n.
# Con: "stack level too deep (SystemStackError)"
# Pro: Consise (Length doesn't imply efficiency!)

result = RubyProf.stop

# Print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)

# # Print a graph profile to text
# printer = RubyProf::GraphPrinter.new(result)
# printer.print(STDOUT, {})