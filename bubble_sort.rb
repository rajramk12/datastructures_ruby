def bubble_sort(input)
  isize = input.size - 1 
  swapped = true
  while(swapped) do 
    swapped = false
    for index in (0..isize - 1 ) do 
    #we need to check items upto zeroth index
    # for next in (index+1..input.size-1) do
      if ( input[index] > input[index + 1] and  index <= isize - 1 )
        swapped = true
        temp = input[index]
        input[index] = input[index+1]
        input[index+1] = temp
      end
    end
  end
  # return array 
  return input
end

def bubble_sort_for(input)
    isize = input.size - 1 
    for index in (0..isize - 1 ) do 
    #we need to check items upto zeroth index
      for next_index in (index+1..isize-1) do
      if ( input[index] > input[next_index])
        temp = input[index]
        input[next_index] = input[index]
        input[index] = temp
      end
    end
  end
  # return array 
  return input
end
arr = [74, 14, 13, 42, 7, 0 , 1, 3, 15, 22, 11]
print(bubble_sort(arr))
puts
print(bubble_sort_for(arr))