# Sorting Algorithms
# ====================
# ====================

# Bubble Sort
# ===========

# Algorithm description
# ---------------------

# - Starting at index 0, set index_1 to 0, and index_2 to 1
# - Compare index_1 and index_2 and swap them if need be
# - increment index_1 and index_2 and repeat comparision and swapping
#   until index_2 is the last index in the array
# - After one swoop, the last item in the array is sorted. Set the
#   final index to the second last item, and repeat the swapping
#   process
# - if there is no swap in an iteration, then the list is sorted

def bubble_sort arr
  for i in (0..arr.length - 1)
    # start by selecting 0th and 1st items
    index_1 = 0
    index_2 = 1

    # set the index of the final item to stop loop
    index_final = (arr.length - 1) - i

    # var to check whether any swap occured
    swapped = false

    # loop through the array, until you reach the final index
    while index_2 <= index_final
      if arr[index_1] > arr[index_2]
        arr[index_2], arr[index_1] = arr[index_1], arr[index_2]
        swapped = true
      end

      # increment index 1 and index 2
      index_1 += 1
      index_2 += 1
    end

    # if no swap occured, the list is sorted
    return arr if !swapped
  end

  return arr
end

# Example
# -------
puts "Bubble Sort:"
print arr = (0..10).to_a.shuffle
puts
print bubble_sort(arr)
puts
puts
