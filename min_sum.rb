arr = [ [-2, -1, 2, 1] ,
      [-28, -11, 1, 30, 12, 100,67],
      [-8, 5, 4, 1] , [ 4, 5, 1, 2 , 8, 12]
]

def min_sum(array)
  array.sort!
  p array
  return 0 if array.size < 2 
  min_sum = array[0] + array[-1]
  out = []
  sum = 0
  size = array.size
  j = size - 1
  i = 0
  while i < j
     while j > i    
       sum = array[i] + array[j]
      if sum.abs() == min_sum.abs()
         out << [ array[i] , array[j] ]
         j -= 1
         break  
       elsif sum.abs < min_sum.abs
        out = []
         min_sum = sum
         out << [ array[i] , array[j] ]
         j -= 1
         break  
      else
        i += 1         
      end
    end
  end
  return  min_sum, out 
end

arr.each do |a|
  p min_sum(a)
end
