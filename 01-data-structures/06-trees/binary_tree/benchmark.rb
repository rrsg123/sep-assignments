require 'benchmark'
require_relative 'node'
require_relative 'binary_search_tree'

puts Benchmark.measure { "insert"*100_000 }
puts Benchmark.measure { "find"*50_000 }
puts Benchmark.measure { "delete"*100_000 }