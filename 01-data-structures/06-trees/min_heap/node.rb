class Node
  attr_accessor :left, :right, :title, :rating

  def initialize(title,rating)
    @title  = title
    @rating = rating
  end
end