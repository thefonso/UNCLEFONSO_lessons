require 'pry'
require 'pry-debugger'
require 'pry-stack_explorer'

def recursive_factorial(x)
  if x == 1
    1
  else
    x * factorial(x - 1)
  end
end

def non_recursive_factorial(x)
  result = 1
  i = 1
  while i <= x
    result *= i
    i+= 1
  end
  result
end

def recursive_fib(x)
  if x == 1 || x == 2
    1
  else
    fib(x - 1) + fib(x - 2)
  end
end

def non_recursive_fib(x)
  primary = 1
  secondary = 1
  i = 3
  while i <= x
    temp = secondary
    secondary = primary + secondary
    primary = temp
    i+= 1
  end
  secondary
end

binding.pry