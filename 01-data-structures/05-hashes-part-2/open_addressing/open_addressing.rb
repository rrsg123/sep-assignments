require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
    @item_count = 0.0
  end

  def []=(key, value)
    i = index(key,size)
    if @items[i] == nil
       @items[i] = Node.new(key, value)
       @item_count += 1
    elsif @items[i].key == key && @items[i].value == value
       return "item is a duplicate"
    else
      nOI = next_open_index(i)
      if @items[i].key == key && @items[i].value != value && nOI == -1
        resize
        @items[nOI].value = value
        @item_count += 1
      elsif nOI == -1
        resize
        self[key] = value
      else
        @items[nOI] = Node.new(key, value)
        @items[nOI].value = value
        @item_count += 1
      end
end
  end

  def [](key)
    i= index(key, size)
    while i < size
      if @items[i].key == key
        return @items[i].value
      else
        i += 1
      end
    end
  end


  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    while @items[index]
      index += 1
    end
    if index >= size
      return -1
    else
      return index
    end
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  def resize
    newArr = @items
    @items = Array.new(size * 2)
    newArr.each do |x|
      if x != nil
        i = index(x.key, size)
        @items[i] = Node.new(x.key, x.value)
      end
    end
  end
end