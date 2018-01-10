class Graph

  def find_kevin_bacon(target)
    queue = []
    found = false
    queue.push(target)
    while queue.size != 0
      node = queue.shift
      node.film_actor_hash.each do |movie, nodes|
      	if !target.path_array.include?(movie)
      	  target.path_array.push(movie)
      	end
      	nodes.each do |actor|
      	  if actor.name != "Kevin Bacon" && !queue.include?(actor)
      	  	queue.push(actor)
      	  end
      	  if actor.name == "Kevin Bacon"
      	  	found = true
      	  	return target.path_array
      	  end
      	end
      end
    end
    return "Could not find connection"
  end

  def reset(hash)
  	hash.each do |movie, nodes|
  	  nodes.each do |actor|
  	  end
  	end
  end

end