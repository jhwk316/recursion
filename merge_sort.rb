num_arr = [6, 5, 3, 8, 7, 4, 2, 1]


def merge_sort(arr)
  #Do nothing if the arr has 1 or fewer elements nothing to sort
  if arr.length <= 1
    return arr
  else
    #finding mid points to divide the array
    mid = arr.length/2
    #method is recalled on each side of the array until the array reaches a length of 1
    left = merge_sort(arr.slice(0, mid))
    right = merge_sort(arr.slice(mid, arr.length))
    #the merge method allows the merging of the arrays after they are divided
    merge(left, right)
  end
end


def merge(left_arr, right_arr)
  #need an empty array to store the elements
  sorted = []

  #While loop allows the if statement to keep running until the array is rebuilt
  while !left_arr.empty? && !right_arr.empty? do
    if left_arr[0] < right_arr[0] #left element pushed if smaller
      sorted << left_arr.shift
    else #right element pushed if smaller
      sorted << right_arr.shift
    end
  end
  #sorted must be concatenated with left and right
  return sorted + left_arr + right_arr
end
#
p merge_sort(num_arr)
puts
p merge_sort([10, 25, 83, 1002, 9, 1, 1005, 55, 12])