# Iterative Algorithms
# ====================
# ====================


# Binary Search
# =============

# Algorithm description
# ---------------------
# - List must be sorted
# - Get the midpoint of the array, by setting the maximum index
#   to the last index of the array, and the minimum index to 0
# - If the number at the midpoint is higher than the target,
#   update the maximum to be midpoint - 1
# - If the number at the midpoint is lower than the target,
#   update the minimum to be midpoint + 1
# - If the number at the midpoint is the target, return the midpoint
#   as the index of the target number
# - If the minimum is ever greater than the maximum, the number is not
#   in the list

def binary_search arr, target
  max_index = arr.length - 1
  min_index = 0

  while(max_index >= min_index)
    midpoint = (max_index + min_index)/2
    if arr[midpoint] > target
      max_index = midpoint - 1
    elsif arr[midpoint] < target
      min_index = midpoint + 1
    elsif arr[midpoint] == target
      return midpoint
    end
  end

  return nil
end

# Example
# -------
puts "Binary search iteratively:"
puts "List: " + (arr = [1,2,3,4,5,6,7,8,9]).to_s
puts "Target: " + (target = 3).to_s
puts "Found at index: " + binary_search(arr, target).to_s
puts