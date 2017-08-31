require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

array = [];
list = LinkedList.new

# Array Create
puts Benchmark.measure {
	10000.times do |x| 
		array[x] = Node.new(x)
	end
}

# List Create
puts Benchmark.measure {
	10000.times do |x|
	  list.add_to_tail(Node.new(x))
	end
}


# Access 5000th in array
puts Benchmark.measure {
	  array[4999]
}

# Access 5000th in list
puts Benchmark.measure {
	node = list.head
	4999.times do 
	  node = node.next
	end
}

# Delete 5000th in array
puts Benchmark.measure {
	array.delete_at(4999)
}

# Delete 5000th in list
puts Benchmark.measure {
	node = list.head	
	4999.times do 
	  node = node.next
	end
	list.delete(node)
}
