def selection_sort(list)
  for i in (0...list.length)
    min = list[i]
    min_index = i
    for j in (i...list.length)
      if list[j] < min
        min = list[j]
        min_index = j
      end
    end
    list[min_index] = list[i]
    list[i] = min
  end
end


def generate_integer_array(max, length)
  the_array = []
  length.times do |i|
    the_array << (rand(max+1))
  end
  the_array
end