def insertion_sort(input)

  for index in (1..input.size - 1 ) do 
    current = input[index]
          
    before = index - 1
    #we need to check items upto zeroth index
    while ( before >= 0 and current < input[before]  )
     # move the items to next position
      input[before+1] = input[before]
       before -= 1
     end
     # in the correct position insert current value 
     input[before+1] = current    
   end
   #     return array 
   return input
end

arr = [74, 14, 13, 42, 7, 0 , 1, 3, 15, 22, 11]         
print(insertion_sort(arr))

