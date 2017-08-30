# Merge Sort
# ==========

# Algorithm description
# ---------------------

# - if list length is 1, return the list
# - Split the array into two
# - sort the left half of the array (recursively)
# - sort the right half of the array (recursively)
# - Put them back in the correct order

def merge_sort arr
  # base case
  return arr if arr.length == 1

  # split array and sort the halves
  midpoint = (arr.length - 1)/2
  arr_1 = merge_sort(arr[0..midpoint])
  arr_2 = merge_sort(arr[(midpoint + 1)..(arr.length - 1)])

  # put halves back together in the correct order
  return merge(arr_1, arr_2)
end

def merge arr_1, arr_2
  # arr to hold merged array
  arr = []

  # repeatedly compare the lowest elements in the
  # sub arrays and merge them into arr
  while arr_1[0] && arr_2[0]
    if arr_1[0] < arr_2[0]
      arr << arr_1.shift
    else
      arr << arr_2.shift
    end
  end

  # merge the remaining parts of the arrays if elements
  # are still present
  arr.push(arr_1).flatten! if arr_1[0]
  arr.push(arr_2).flatten! if arr_2[0]

  return arr
end

# Example
# -------
puts "Merge Sort:"
print arr = (0..10).to_a.shuffle
puts
print merge_sort(arr)
puts
puts