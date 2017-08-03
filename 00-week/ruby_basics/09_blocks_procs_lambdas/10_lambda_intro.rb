# LAMBDA: intro
#
# Like procs, lambdas are objects. lambdas are almost identical to procs.

# lambda
lambda { puts "Hello!" }

# proc
Proc.new { puts "Hello!" }

# we use .call to run a lambda.
# In the example below, when we pass the lambda to lambda_demo, 
# the method calls the lambda and executes its code.

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

# so lets run it and see what happens..can you guess?
lambda_demo(lambda { puts "I'm the lambda!" })
# >> I'm the method!
# >> I'm the lambda!
