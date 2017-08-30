# Binary Search (recursive)
# =============

# Algorithm description
# ---------------------
# - List must be sorted
# - Get the midpoint of the array, using the provided maximum
#   and minimum indices
# - If the number at the midpoint is higher than the target,
#   call binary_search_rec on the lower half of the array
# - If the number at the midpoint is lower than the target,
#   call binary_search_rec on the higher half of the array
# - If the number at the midpoint is the target, return the midpoint
#   as the index of the target number
# - If the minimum is ever greater than the maximum, the number is not
#   in the list

def binary_search_rec arr, target, min_index = 0, max_index = arr.length - 1
  return nil if min_index > max_index

  midpoint = (max_index + min_index)/2

  if arr[midpoint] > target
    return binary_search_rec(arr, target, min_index, midpoint - 1)
  elsif arr[midpoint] < target
    return binary_search_rec(arr, target, midpoint + 1, max_index)
  elsif arr[midpoint] == target
    return midpoint
  end
end

# Example
# -------
puts "Binary search recursively:"
puts "List: " + (arr = [1,2,3,4,5,6,7,8,9]).to_s
puts "Target: " + (target = 3).to_s
puts "Found at index: " + binary_search_rec(arr, target).to_s
puts
