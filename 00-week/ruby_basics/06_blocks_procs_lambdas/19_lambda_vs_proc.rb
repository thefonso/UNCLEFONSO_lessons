# There are two main differences between Procs and Lambdas...

# 01 a lambda checks the number of arguments passed to it, while a proc does not.
# TODO: need example here


# 02 when a lambda returns, it passes control back to the calling method; 
#    when a proc returns, it does so immediately, without going back to the calling method.
def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

batman_ironman_lambda # => "Iron Man will win!"

# Above, the lambda goes back into the method after being called, 
# so the method returns the last code it evaluates: "Iron Man will win!"
# Below, the proc returns imediately without goig back to the method

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

batman_ironman_proc # => "Batman will win!"

