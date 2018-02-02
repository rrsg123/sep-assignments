require 'benchmark'
require_relative 'quick_sort'
require_relative 'bucket_sort'
require_relative 'heap_sort'

array = (1..50).to_a.shuffle!

Benchmark.bm(1000) do |x|
  x.report("quick") do
    quicksort(array)
  end
  array.shuffle!
  x.report("bucket") do
    bucket_sort(array)
  end
  array.shuffle!
  x.report("heap") do
    heapsort(array)
  end
end