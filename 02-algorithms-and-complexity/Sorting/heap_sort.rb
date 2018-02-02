def heapsort(array)
  if array.length <= 1
    return array
  else
    heapify(array)
    endd = (array.length - 1)
    while endd > 0
      array[endd], array[0] = array[0], array[endd]
  	  endd -= 1
  	  sift_down(array, 0, endd)
  	end
  	return array
  end
end

def heapify(array)
  start = (array.length - 2) / 2
  while start >= 0
  	sift_down(array, start, array.length - 1)
  	start -= 1
  end
  array
 end

def sift_down(array, start, endd)
  root = start
  while (root * 2 + 1) <= endd
    child = root * 2 + 1
    swap = root
    if array[swap] < array[child]
     swap = child
    end
    if child + 1 <= endd && array[swap] < array[child+1]
     swap = child + 1
    end
    if swap != root
     array[root], array[swap] = array[swap], array[root]
     root = swap
    else
     return
    end
  end
end