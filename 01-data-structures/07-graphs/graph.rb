class Graph

	def self.find_kevin_bacon(actor)	
	  @film_actor_hash = Hash.new()

	  connections = []
	  kb_films    = []
	  actor_films = []
	 
	  #All of Kevin Bacon's films
	  @film_actor_hash.each do |key,value|	  	
	  	if value == "Kevin Bacon"
	  	  kb_films.push(key)
	  	end
	  end

	  #All the films target actor has been in
	  @film_actor_hash.each do |key,value|
	    if value == actor
	      actor_films.push(key)
	    end
	  end

	  film_in_common     = kb_films & actor_films
	  kb_actors          = @film_actor_hash.values_at(kb_films)
	  actor_actors       = @film_actor_hash.values_at(actor_films)
	  
	  four_edge_2           = actor_actors & kb_actors
	  four_edge_1           = (@film_actor_hash.key(four_edge_2) & actor_films)
	  four_edge_3           = (@film_actor_hash.key(four_edge_2) & kb_films)

	  six_edge_3           = @film_actor_hash.key(actor_actors) & @film_actor_hash.key(kb_actors)
	  six_edge_2           = six_edge_3 & actor_actors
	  six_edge_4           = six_edge_3 & kb_actors
	  six_edge_1           = actor_films & six_edge_2
	  six_edge_5           = kb_films & six_edge_4

	  #The following should produce 4 different results:
	  #1. If the target and Kevin Bacon appear in the same movie, only that movie will be pushed (2 edge result)
	  #2. If not, then all movies with KB and all movies with target are cross checked for common actors (4 edges)
	  #3. If still no matches, all movies 2 edges from both movie sets (which are already 1 edge away from the ends) will be checked (total of 6 edges)
	  #4. If still nothing, output should reflect the lack of connection.

 	  # If both actors appear in the same film
 	  if film_in_common.length == 1
 	    #in this case, there will only be one movie in common, so one item pushed	
 	    connections.push(film_in_common) 
 	  # If there is a common actor that connections a film both the target and KB has been in 
 	  elsif film_in_common == nil && four_edge_2.length == 1
 	  	connections.push(four_edge_1, four_edge_2, four_edge_3)
 	  elsif four_edge_2 == nil && six_edge_3 != nil 
 	  	connections.push(six_edge_1, six_edge_2, six_edge_3, six_edge_4, six_edge_5)
 	  else
 	   	connections.push("There is no connection, or the connections is longer than 6 edges")
 	  end
	return connections	
	end
end