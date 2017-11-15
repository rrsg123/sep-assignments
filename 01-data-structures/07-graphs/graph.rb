include 'node'

class Graph
	def find_kevin_bacon(actor)	
	  
	  bacon_films  = []
	  bacon_actors = []

	  #all the films KB has been in
	  Kevin_Bacon.film_actor_hash.each do |film,actors|
	  	bacon_films.push(film)
	  end

	  #all the actors in all the films KB has been in
	  Kevin_Bacon.film_actor_hash.each do |film,actors|
	  	bacon_actors.push(actors)
	  end

	  #here I will cycle through all the actors the target has been involved with and narrow it down to KB, if possible
	  connections = []
	  remainder_1 = []
	  remainder_2 = []
	  remainder_3 = []
	  

	  actor.film_actor_hash.each do |film, actors|
	    actors.each do |actor|
	      if actor == Kevin_Bacon
	      	connections.push(film)
	      else
	      	remainder_1.push(actor)
	      end
	    end
	  	remainder_1.each do |actor|
	  	  actor.film_actor_hash.each do |film, actors|
	  	  	film.each do |actor|
	  	  		if actor == Kevin_Bacon
	  	  			connections.push(remainder_1[actor])
	  	  			connections.push(film)
	  	  		else
	  	  			remainder_2.push(actor)
	  	  		end
	  	  	end
	  	  end
	  	end
	  	remainder_2.each do |actor|
	  	  actor.film_actor_hash.each do |film, actors|
	  	  	film.each do |actor|
	  	  		if actor == Kevin_Bacon
	  	  			connections.push(remainder_1[actor])
	  	  			connections.push(film)
	  	  		else
	  	  			remainder_3.push(actor)
	  	  		end
	  	  	end
	  	  end
	  	end
	  	remainder_3.each do |actor|
	  	  actor.film_actor_hash.each do |film, actors|
	  	  	film.each do |actor|
	  	  		if actor == Kevin_Bacon
	  	  			connections.push(remainder_1[actor])
	  	  			connections.push(film)
	  	  		else
	  	  			print "There is no connection!"
	  	  		end
	  	  	end
	  	  end
	  	end
	print connections	
	end
end