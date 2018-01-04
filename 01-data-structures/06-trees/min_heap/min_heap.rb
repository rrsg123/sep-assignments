require_relative 'node'

class MinHeap
  attr_accessor :root

  def initialize(root)
    @root = root
  end

  def insert(root,node)
    if root.rating > node.rating
      a = root
      root = node
      insert(root.left,a)
    else
      if root.left == nil
        root.left = node
      elsif root.left != nil && root.right == nil
        if root.left.rating < node.rating
          root.right = node
        else
          a = root.left
          root.left = node
          root.right = a
        end
      elsif root.left && root.right
        insert(root.left,node)
      elsif root.left.left && root.left.right
        insert(root.right,node)      
      end   
    end
  end  

  def find(root,data)
    if root == nil || data == nil
      return nil
    else
      if root.title == data
        return root
      elsif 
        l = find(root.left, data)
        r = find(root.right, data)
        if l
          return l
        elsif r
          return r 
        end
      end
    end
  end

  def delete(root,data)
    if root == nil || data == nil
      return nil
    else
      current = find(root,data)
      if current == nil
        return nil
      else
        current.title  = nil
        current.rating = nil
      end
    end
  end

  def print(children=nil)
    oldA   =  [@root]
    newA   =  []
    oldA.each do |x|
      newA.push("#{x.title}: #{x.rating}")
      if x.left != nil
        oldA.push(x.left)
      end
      if x.right != nil
        oldA.push(x.right)
      end
    end
    puts newA
  end

end