def selection_sort(list)

  #find the smallest number in the list

  for i in 0...list.length
    min = list[i]
    min_index = i

    # Finds the smallest number after the current index and saves its value and index
    for j in i+1...list.length
      if list[j] < min
        min = list[j]
        min_index = j
      end
    end

    #swaps them
    list[min_index] = list[i]
    list[i] = min
  end

  #put it at the beginning of the list by switching it with the item you started searching at

  #Now the first index is in order so go to the next index and repeat until we reach the end of the list

  # return the list

end

def generate_integer_array(max, length)
  the_array = []
  length.times do |i|
    the_array << (rand(max+1))
  end
  the_array
end

my_list = generate_integer_array(99, 20)
puts my_list
puts selection_sort(my_list)