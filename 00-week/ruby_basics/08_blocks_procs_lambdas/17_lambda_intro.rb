# Like procs, lambdas are objects. lambdas are almost identical to procs.
# There are two main differences between Procs and Lambdas...
#
# 01 a lambda checks the number of arguments passed to it, while a proc does not.
#
# 02 when a lambda returns, it passes control back to the calling method; 
#    when a proc returns, it does so immediately, without going back to the calling method.

# lambda
lambda { puts "Hello!" }

# proc
Proc.new { puts "Hello!" }

# In the example below, when we pass the lambda to lambda_demo, 
# the method calls the lambda and executes its code.

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

# so lets run it and see what happens..can you guess?
lambda_demo(lambda { puts "I'm the lambda!" })
