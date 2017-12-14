Failures:

  1) MinHeap#find properly finds a node
     Failure/Error: expect(tree.find(root, district)).to eq "District 9"
     
       expected: "District 9"
            got: nil
     
       (compared using ==)
     # ./min_heap_spec.rb:44:in `block (3 levels) in <top (required)>'

  2) MinHeap#delete properly deletes a left node
     Failure/Error: expect(tree.find(hope.title)).to be_nil
     
     ArgumentError:
       wrong number of arguments (given 1, expected 2)
     # ./min_heap.rb:56:in `find'
     # ./min_heap_spec.rb:56:in `block (3 levels) in <top (required)>'

  3) MinHeap#print should print out the tree
     Failure/Error: tree.insert(root, martian)
     
     NameError:
       undefined local variable or method `b' for #<MinHeap:0x0055a317815690>
     # ./min_heap.rb:28:in `insert'
     # ./min_heap_spec.rb:65:in `block (3 levels) in <top (required)>'


