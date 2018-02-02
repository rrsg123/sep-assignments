def bucket_sort(array, bucket_size = 5)
  if array.length <= 1
    return array
  end

  min_value = array.min
  max_value = array.max

  bucket_count = ((max_value - min_value) / bucket_size).floor + 1
  buckets = Array.new(bucket_count)
  (0..buckets.length - 1).each do |i|
    buckets[i] = []
  end

  (0..array.length - 1).each do |i|
    buckets[((array[i] - min_value) / bucket_size).floor].push(array[i])
  end

  array.clear
  (0..buckets.length - 1).each do |i|
    buckets[i] = quicksort(buckets[i])
    buckets[i].each do |x|
      array.push(x)
    end
  end
  
  def quicksort(list)
  	if list.size <= 1
  	  return list
  	else
  	  pivot = list.pop
  	  quicksort(list.select{|x| x <= pivot}) + [pivot] + quicksort(list.select{|x| x > pivot})
    end
  end
end