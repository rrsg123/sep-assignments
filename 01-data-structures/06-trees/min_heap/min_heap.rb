require_relative 'node'

class MinHeap
  def initialize(root)
  	@root = root
  end

  def insert(root,data)
    if root.left == nil
       root.left = data
    elsif root.right == nil
       root.right = data
    elsif root.left.left != nil && root.left.right != nil
       insert(root.right,data)
    elsif root.left != nil && root.right != nil
       insert(root.left,data)
    end
  end

  def delete(root,data)
    current = find(root, data)
    if current == nil
      return nil
    else
      current.title = nil
      current.rating = nil
    end
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