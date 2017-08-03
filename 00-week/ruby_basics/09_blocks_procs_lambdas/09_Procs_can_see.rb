# PROCS: what procs can see
#
# Unlike methods, procs can see the environment they're defined in.
# Procs are closures

count = 0
incrementer = Proc.new { count += 1 }

count                         # => 0
incrementer.call
count                         # => 1
incrementer.call
count                         # => 2
incrementer.call
count                         # => 3

# They keep the environment they were defined in
# even if they get passed into a new scope.
def invoke_10_times(myproc)
  10.times { myproc.call }
end

count                         # => 3
invoke_10_times(incrementer)
count                         # => 13
