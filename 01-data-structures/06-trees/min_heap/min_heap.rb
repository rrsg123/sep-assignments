require_relative 'node'

class MinHeap
  attr_accessor :root

  def initialize(root)
    @root = root
  end

  def insert(root,node)
    if root.rating > node.rating
      a = root
      @root = node
      insert(@root,a)
    else
      if root.left.nil?
        root.left = node
      elsif root.right.nil? && root.left != nil
        if root.left.rating < node.rating
          root.right = node
        else
          root.right = root.left
          root.left = node
        end
      elsif root.left != nil && root.right != nil && root.left.left != nil && root.left.right != nil
        insert(root.right,node)
      elsif root.left != nil && root.right != nil
        insert(root.left,node)
      end
    end
  end  

  def find(root,data)
    if data.nil? || root.nil?
      return nil
    end
    if root.title == data
      return root
    else
      current = find(root.left,data)
      if current.nil?
        current = find(root.right,data)
      end
    end
    return current
  end

  def delete(root,data)
    if root.nil? || data.nil?
      return nil
    else
      current = find(root,data)
      if current.nil?
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