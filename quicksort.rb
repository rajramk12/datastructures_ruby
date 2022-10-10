def quick_sort(input, start, last)
  if start < last
    pivot = partition(input, start, last)
    quick_sort(input, start, pivot - 1)
    quick_sort(input, pivot + 1, last)
  end
  return input
end

def partition(input, start, last)
  return last if start > last
  pivot = input[last]
  i = start - 1
  for j in start..last
    if input[j] < pivot
      i += 1
      swap(input, i, j )
    end
  end
  i += 1
  swap(input, i, last)
  return i
end

def swap(input, src, target)
  temp = input[target]
  input[target] = input[src]
  input[src] = temp
end

array  =[56, 5, 41, 9, 9 , 9, 11, 102, 191, 33, 100, 11, 3, 5]
print(quick_sort(array, 0, array.size - 1 ))
