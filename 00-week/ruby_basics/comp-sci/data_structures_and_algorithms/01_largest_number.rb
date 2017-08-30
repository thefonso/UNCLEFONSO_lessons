# Iterative Algorithms
# ====================
# ====================

# Largest Number
# ==============

# Algorithm description
# ---------------------
# - Loop through the array, keeping track of
#   the largest number so far in a variable,
#   and return the number at the end

def largest_number arr
  largest_num = 0
  arr.each do |num|
    largest_num = num if num > largest_num
  end
  return largest_num
end

# Example
# -------
puts "Largest number iteratively:"
puts "List: " + (arr = [2,4,5,6,40,23,98,83]).to_s
puts "Largest number: " + largest_number([2,4,5,6,40,23,98,83]).to_s
puts