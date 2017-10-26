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