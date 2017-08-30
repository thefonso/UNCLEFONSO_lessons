# Stack
# =====

# Can also be implemented as an array in ruby
# Make use of Array#push and Array#pop

def stack_as_array
  puts "Stack as array: "
  arr = [1,3,4,5,6,7]
  print arr
  puts

  puts "Pop top element (7):"
  puts arr.pop
  print arr
  puts

  puts "Push element (8):"
  arr.push(8)
  print arr
  puts
  puts
end

# Example
# -------
stack_as_array
