def merge_sort(input)
  size = input.size
  return input if size < 2
  mid_size = size / 2.round
  left = input[0..mid_size-1]
  right = input[mid_size..size]
  merge_sort(left)
  merge_sort(right)
  merge(input,left,right)
  return input
end

def merge(input,left,right)
  i = 0
  j = 0
  k = 0
  left_len = left.size
  right_len = right.size

  while ( i < left_len && j < right_len )
    if left[i] <= right[j]
      input[k] = left[i]
      i += 1
    else
      input[k] = right[j]
      j += 1
    end
    k += 1
  end
  while i < left_len
    input[k] = left[i]
      i += 1
     k += 1
  end
    while j < right_len
    input[k] = right[j]
      j += 1
      k += 1
  end
end  

print(merge_sort([10,1,3,1228,25,11,54,824,93,999,65, 12,7]))