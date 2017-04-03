# Explain why you might want to enumerate over items in an array.

students = ['frodo baggins', 'samwise gamgee', 'peregrin took', 'meriadoc brandybuck']
# How do we make these uppercase?
students.capitalize # nope!

# But this works:
students.each { |student| p student.capitalize }
# Or
students.each do |student| 
  p student.capitalize
end


# Demonstrate how to enumerate over items using the .each method.
# Demonstrate how to incorporate conditional statements to perform more complex operations.
students.each do |student| 
  unless student == "samwise gamgee"
    p student.split(" ").map(&:capitalize).join(" ")
  else
    p student
  end
end



# Demonstrate how some other operators work using pry

# times, upto, downto
3.times { |x| p x } 
5.upto(10) do
  puts "hello"
end
10.downto(1) { puts "Almost new years" }
  
# split, join
name = "john jacob jingleheimer schmidt"
all_names = name.split(" ") #returns an array of words
all_names.map(&:capitalize).join(" ")

# select, reject
[1,2,3,4,5].select { |num|  num.even?  }
[1,42,58,101].reject { |num| num < 50 }


# reduce
def factorial(num)
  (1..num).reduce(:*) # Notice how the * is a symbol -- uses the * function as the reducer
end





# Block Examples

# Block is in between the curly braces
[1,2,3].each { |n| puts n * 2 }

# Block is everything between the do and end
[1,2,3].each do |n|
  puts n * 2
end



# Proc Examples 

# The '&' tells ruby to turn the proc into a block
p = Proc.new { |x| puts x * 2 }
[1,2,3].each(&p)

# The body of the Proc object gets executed when called
proc = Proc.new { puts "Hello World" }
proc.call



# Lambda Examples            
lam = lambda { |n| puts n * 2 }
[1,2,3].each(&lam)

lam = lambda { puts "Hello World" }
lam.call


proc.class
lam.class


# What is the difference?
  # *A lambda is a proc, but of a different flavor
  # Lambda checks number of inputs, whereas proc is less strict about number of inputs
  # return behavior:
    # a lambda return returns that value to the code that called it
    # a proc return is treated as a return in the code that called it


def lambda_test
  lam = lambda { return }
  lam.call
  puts "Hello world"
end

# calling lambda_test prints 'Hello World'
lambda_test


def proc_test
  proc = Proc.new { return }
  proc.call
  puts "Hello world"
end

# calling proc_test prints nothing
proc_test




# Closure

# Example of Proc objects preserving local context
def counter
  n = 0
  return Proc.new { n += 1 }
end

a = counter
a.call        # returns 1
a.call        # returns 2

b = counter
b.call        # returns 1

a.call        # returns 3

