# Selection Sort
# =============

# Algorithm description
# ---------------------

# Swoop through the array and look for the smallest number
# Swap the smallest number with the number at index 0
# Repeat, and swap the second smallest number with the number
# at index 1
# Repeat until you have reached the end of the array

def selection_sort arr
  # var to store the current index
  current_index = 0

  # loop until the end of the array
  while current_index < arr.length

    # assume current number is smallest
    smallest_number_index = current_index

    # loop the array to the right of the number
    for i in ((current_index + 1)..(arr.length - 1))
      # keep track of the smallest number so far
      smallest_number_index = i if arr[i] < arr[smallest_number_index]
    end

    # swap smallest number with current index
    arr[current_index], arr[smallest_number_index] = arr[smallest_number_index], arr[current_index]

    # increment current index
    current_index += 1
  end

  return arr
end

# Example
# -------
puts "Selection Sort:"
print arr = (0..10).to_a.shuffle
puts
print selection_sort(arr)
puts
puts