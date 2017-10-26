require_relative 'node'

class MinHeap
  def initialize(root)
  	@root = root
  end

  def insert(root,data)
    if root.rating > node.rating
      temp = root
      @root = node
      node = temp
      insert(@root,node)
    else
      if root.left == nil
      	 root.left = node
      elsif root.right == nil
      	 root.right = node
      elsif root.left.left != nil && root.left.right != nil
      	 insert(root.right,node)
      elsif root.left != nil && root.right != nil
      	 insert(root.left,node)
      end
    end
  end

  def delete(root,data)
  end

  def find(root,data)
    if root.title    != nil
  	  return root
  	elsif root.left  != nil
  	  find(root.left,data)
  	elsif root.right != nil
  	  find(root.right,data)
  	end
  end

  def print(root)
    oldA   =  [@root]
    newA   =  []
    oldA.each do |i|
      if i != nil
        newA.push(i)
      end
      if i.left  != nil
        newA.push(i.left)
      end
      if i.right != nil
        newA.push(i.right)
      end
    end
    newA.each do |j|
      puts "#{j.title}: #{j.rating}"
    end
  end

end