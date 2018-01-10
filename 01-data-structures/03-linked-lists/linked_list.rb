require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head == nil
       @head = node
       @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    current  = @head
    if @tail == @head
       @tail = nil
       @head = nil
    else
      while current.next != nil && current.next != @tail
        current = current.next
      end
      @tail = current
    end 
  end

  # This method prints out a representation of the list.
  def print
    current = @head
    until current == nil do 
      puts current.data
      current = current.next      
    end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if @head == node
      remove_front
    elsif @tail == node
      remove_tail
    else
      current = @head
      while current.next != nil && current.next != node
        current = current.next
      end
      current.next = current.next.next
    end
  end


  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    node.next = @head
    @head = node
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    if @head == @tail
       @head = nil
    else
      @head = @head.next
    end
  end
end