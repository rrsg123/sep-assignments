require_relative 'hash_item'

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    i = index(key,size)
    if    @items[i] == nil
          @items[i] =  HashItem.new(key,value)
    elsif @items[i].key != key
          resize
          self[key] = value
    elsif @items[i].key == key && @items[i].value != value
          resize
          @items[index(key,size)].value = value
    end    
  end


  def [](key)
    i = index(key,size)
    if @items[i].key == key && @items[i] != nil
      @items[i].value
    end
  end

  def resize
    arrNew = @items.compact
    @items = Array.new(size * 2)
    arrNew.each do |item|
      self[item.key] = item.value      
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

end