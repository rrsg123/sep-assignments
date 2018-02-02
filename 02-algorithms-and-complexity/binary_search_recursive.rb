def binary_recursive(collection,target)
  low = 0
  high = collection.length - 1

  while low <= high
    mid = (low + high) / 2
    if collection[mid] == target
      mid
    elsif collection[mid] < target
      binary_recursive(collection[(mid + 1)..high],value)
    else
      binary_recursive(collection[low..mid],value)
    end
  end

  return "not found"
end