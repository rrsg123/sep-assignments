def quicksort(list)
  if list.size <= 1
    return list
  else
  pivot = list.pop
  	quicksort(list.select{|x| x <= pivot}) + [pivot] + quicksort(list.select{|x| x > pivot})
  end
end
