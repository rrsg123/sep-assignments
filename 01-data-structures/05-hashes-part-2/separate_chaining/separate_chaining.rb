require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @item_count = 0
    @items = Array.new(size)
  end

  def []=(key, value)
    i = index(key, size)
    if @items[i] == nil 
       @items[i] = LinkedList.new
    end
       @items[i].add_to_tail(Node.new(key, value))
       @item_count += 1
    if load_factor > max_load_factor
       resize
    end
  end 
  
  def [](key)
    i = index(key,size)
    list = @items[i]
    if list != nil
      current = list.head
      while current != nil
        if current.key == key
          return current.value
        end
        current = current.next
      end
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Calculate the current load factor
  def load_factor
    (@item_count / size).to_f
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  def resize
    newArr = Array.new(size * 2)
    (0..size).each do |i|
      list = @items[i]
      if @items[i] != nil
        current = @items[i].head
        iNew = index(current.key, newArr.size)
        while current != nil          
          newArr[iNew] = list
          list = LinkedList.new
          list.add_to_tail(current)
          current = current.next
        end
        @items[i] = nil
      end
    end
    @items = newArr
  end
end