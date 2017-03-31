# TODO: merge 17 and 18
# Like procs, lambdas are objects. The similarities don't stop there: 
# with the exception of a bit of syntax and a few behavioral quirks, l
# ambdas are identical to procs.

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
# >> I'm the method!
# >> I'm the lambda!