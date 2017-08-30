# Recursive Algorithms
# ====================
# ====================

# Largest Number (recursive)
# ==============

# Algorithm description
# ---------------------
# - Divide the array into two parts, and compare the result of
#   largest_number_rec on the parts. Return the larger result
# - If the array length is <= 2, return the larger
#   of the two numbers (or the number itself)

def largest_number_rec arr
  # base case for odd number of items
  return arr[0] if arr.length == 1

  # base case for even number of items
  if arr.length == 2
    return arr[0] > arr[1] ? arr[0] : arr[1]
  end

  # split array into 2 and get largest number of each part
  midpoint = (arr.length - 1)/2
  num_1 = largest_number_rec(arr[0..midpoint])
  num_2 = largest_number_rec(arr[(midpoint + 1)..-1])

  return num_1 > num_2 ? num_1 : num_2
end

# Example
# -------
puts "Largest number recursively:"
puts "List: " + (arr = [2,4,5,6,40,23,98,83]).to_s
puts "Largest number: " + largest_number_rec([2,4,5,6,40,23,98,83]).to_s
puts