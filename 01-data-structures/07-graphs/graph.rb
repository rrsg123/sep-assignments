require_relative 'node'

class Graph
	def find_kevin_bacon(name)	
	
	  #here I will cycle through all the actors the target has been involved with 
	  connections = []
	  remainder_1 = []
	  remainder_2 = []
	  remainder_3 = []
	  
	  #three sets of remainders because the produced array will always start on a movie 
	  #and end on a movie (if we're linking an actor to another actor, those are the only edges)



	  film_actor_hash.each do |film, actors|
	    actors.each do |actor|
	      if actor == Kevin_Bacon
	      	connections.push(film)
	      else
	      	remainder_1.push(actor)
	      end
	    end
	  end  
	
	  	remainder_1.each do |actor|
	  	  actor.each do |film, actors|
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
	  	  actor.each do |film, actors|
	  	  	film.each do |actor|
	  	  		if actor == Kevin_Bacon
	  	  			connections.push(remainder_2[actor])
	  	  			connections.push(film)
	  	  		else
	  	  			remainder_3.push(actor)
	  	  		end
	  	  	end
	  	  end
	  	end
	
	  	remainder_3.each do |actor|
	  	  actor.each do |film, actors|
	  	  	film.each do |actor|
	  	  		if actor == Kevin_Bacon
	  	  			connections.push(remainder_3[actor])
	  	  			connections.push(film)
	  	  		else
	  	  			print "There is no connection or connection is longer than 6 edges!"
	  	  		end
	  	  	end
	  	  end
	  	end
	

	print connections	
	end
end