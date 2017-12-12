require_relative 'node'

class MinHeap
  attr_accessor :root, :title, :rating 

  def initialize(root)
  	@root = root
  end

  def insert(root,node)
    if root.rating > node.rating
       temp = root
       @root = node
       insert(@root,temp)
    else
      if root.left == nil && root.right == nil
        root.left = node
      elsif root.left && root.right == nil
        if node.rating > root.left.rating
          root.right = node
        else
          a = root.left
          root.left  = node
          root.right = a
        end
      elsif root.left && root.right
        if node.rating < root.left.rating
          root.right = b
          root.right = root.left
          root.left = node
          insert(root.left,b)
        elsif node.rating > root.left.rating && node.rating < root.right.rating
          c = root.right
          root.right = node
          insert(root.left,c)
        end
      end
    end
  end


  def delete(root,data)
    if root == nil || data == nil
      return nil
    else
      current = find(root,data)
      if current != nil
        current.title = nil
        current.rating = nil
      else
        nil
      end
    end
  end

  def find(root,data)
    if root == nil || data == nil
      return nil
    else
      if root.title == data
        return root
      elsif root.left != nil
        find(root.left,data)
      elsif root.right != nil
        find(root.right,data)
      end
    end
  end

  def print(children=nil)
    oldA   =  [@root]
    newA   =  []
    while oldA.length > 0
      i = oldA.shift
      if i.left  != nil
        oldA.push(i.left)
      end
      if i.right != nil
        oldA.push(i.right)
      end
      newA.push("#{i.title}: #{i.rating}")
    end
    newA.each {|j| puts j}
  end

end