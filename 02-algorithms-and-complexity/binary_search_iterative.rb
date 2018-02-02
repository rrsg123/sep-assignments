def binary_iterative(collection,target)
  low = 0
  high = collection.length - 1

  while low <= high
    mid = (low + high) / 2
    if collection[mid] > target
      high = mid - 1
    elsif collection[mid] < target
      low = mid + 1
    else
      return mid
    end
  end

  return "not found"
end