require_relative 'node'
require 'benchmark'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if node.rating > root.rating
      if root.right == nil 
         root.right  = node
      else
        insert(root.right, node)
      end
    else
      if root.left == nil
         root.left  = node
      else
        insert(root.left, node)
      end
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    if root == nil || data == nil 
        return nil 
    else
      if root.title == data
        return root
      elsif root.left  != nil
        find(root.left, data)
      elsif root.right != nil
        find(root.right, data)
      end
    end
  end

  def delete(root, data)
    if root == nil || data == nil
        return nil
    else
      current_node = find(root, data)
      if current_node == nil
        return nil
      else
         current_node.title = nil
         current_node.rating = nil
      end
    end
  end

  def printf(children=nil)
    oldA   =  [@root]
    newA   =  []
    while oldA.length != 0
      i = oldA.shift
      if i.left  != nil
        oldA.push(i.left)
      end
      if i.right != nil
        oldA.push(i.right)
      end
      newA.push("#{i.title}: #{i.rating}")
    end
    newA.each do |j|
      puts j
    end
  end
end