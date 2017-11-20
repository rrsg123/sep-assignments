include RSpec

require_relative 'node'
require_relative 'graph'

RSpec.describe Graph, type: Class do
  let(:film_actor_hash) { Graph.new }

  describe "find_kevin_bacon" do
	it "returns the number of edges connecting passed actor to Kevin_Bacon" do
      film_actor_hash                              = Hash.new
      film_actor_hash["Footloose"]                 = ["Kevin_Bacon", "Lori_Singer", "Dianne_Wiest", "John_Lithgow", "Sarah_Jessica_Parker", "Chris_Penn"]
      film_actor_hash["The Man with One Red Shoe"] = ["Tom_Hanks", "Dabney_Coleman", "Lori_Singer", "Charles_Durning", "Carrie_Fisher", "Jim_Belushi"]
      film_actor_hash["Hannah and Her Sisters"]    = ["Barbara_Hershey", "Dianne_Wiest", "Woody_Allen", "Julie_Kavner", "Ira_Wheeler", "Joanna_Gleeson"]
      film_actor_hash["Annie Hall"]                = ["Woody_Allen", "Diane_Keaton", "Tony_Roberts", "Carol_Kane", "Paul_Simon", "Janet_Margolin"]   
      film_actor_hash["The Godfather"]             = ["Marlon_Brando", "Al_Pacino", "James_Caan", "Robert_Duvall", "Diane_Keaton", "John_Cazale"]
      film_actor_hash["Random Movie"]              = ["Random_Actor1", "Random_Actor2", "Random_Actor3", "Random_Actor4", "Random_Actor5", "Random_Actor6"]
   
      expect(Graph.find_kevin_bacon("Dabney_Coleman")).to eq ["The Man with One Red Shoe", "Lori_Singer", "Footloose"]
    end

    it "returns the number of edges connecting passed actor to Kevin_Bacon" do
      film_actor_hash                              = Hash.new
      film_actor_hash["Footloose"]                 = ["Kevin_Bacon", "Lori_Singer", "Dianne_Wiest", "John_Lithgow", "Sarah_Jessica_Parker", "Chris_Penn"]
      film_actor_hash["The Man with One Red Shoe"] = ["Tom_Hanks", "Dabney_Coleman", "Lori_Singer", "Charles_Durning", "Carrie_Fisher", "Jim_Belushi"]
      film_actor_hash["Hannah and Her Sisters"]    = ["Barbara_Hershey", "Dianne_Wiest", "Woody_Allen", "Julie_Kavner", "Ira_Wheeler", "Joanna_Gleeson"]
      film_actor_hash["Annie Hall"]                = ["Woody_Allen", "Diane_Keaton", "Tony_Roberts", "Carol_Kane", "Paul_Simon", "Janet_Margolin"]   
      film_actor_hash["The Godfather"]             = ["Marlon_Brando", "Al_Pacino", "James_Caan", "Robert_Duvall", "Diane_Keaton", "John_Cazale"]
      film_actor_hash["Random Movie"]              = ["Random_Actor1", "Random_Actor2", "Random_Actor3", "Random_Actor4", "Random_Actor5", "Random_Actor6"]
    
      expect(Graph.find_kevin_bacon("Tony_Roberts")).to eq ["Annie Hall", Woody_Allen, "Hannah and Her Sisters", Dianne_Wiest, "Footloose"]
    end

    it "returns the number of edges connecting passed actor to Kevin_Bacon" do
      film_actor_hash                              = Hash.new
      film_actor_hash["Footloose"]                 = ["Kevin_Bacon", "Lori_Singer", "Dianne_Wiest", "John_Lithgow", "Sarah_Jessica_Parker", "Chris_Penn"]
      film_actor_hash["The Man with One Red Shoe"] = ["Tom_Hanks", "Dabney_Coleman", "Lori_Singer", "Charles_Durning", "Carrie_Fisher", "Jim_Belushi"]
      film_actor_hash["Hannah and Her Sisters"]    = ["Barbara_Hershey", "Dianne_Wiest", "Woody_Allen", "Julie_Kavner", "Ira_Wheeler", "Joanna_Gleeson"]
      film_actor_hash["Annie Hall"]                = ["Woody_Allen", "Diane_Keaton", "Tony_Roberts", "Carol_Kane", "Paul_Simon", "Janet_Margolin"]   
      film_actor_hash["The Godfather"]             = ["Marlon_Brando", "Al_Pacino", "James_Caan", "Robert_Duvall", "Diane_Keaton", "John_Cazale"]
      film_actor_hash["Random Movie"]              = ["Random_Actor1", "Random_Actor2", "Random_Actor3", "Random_Actor4", "Random_Actor5", "Random_Actor6"]
    
      expect(Graph.find_kevin_bacon("Marlon_Brando")).to eq "There is no connection or connection is longer than 6 edges!"
    end

    it "returns the number of edges connecting passed actor to Kevin_Bacon" do
      film_actor_hash                              = Hash.new
      film_actor_hash["Footloose"]                 = ["Kevin_Bacon", "Lori_Singer", "Dianne_Wiest", "John_Lithgow", "Sarah_Jessica_Parker", "Chris_Penn"]
      film_actor_hash["The Man with One Red Shoe"] = ["Tom_Hanks", "Dabney_Coleman", "Lori_Singer", "Charles_Durning", "Carrie_Fisher", "Jim_Belushi"]
      film_actor_hash["Hannah and Her Sisters"]    = ["Barbara_Hershey", "Dianne_Wiest", "Woody_Allen", "Julie_Kavner", "Ira_Wheeler", "Joanna_Gleeson"]
      film_actor_hash["Annie Hall"]                = ["Woody_Allen", "Diane_Keaton", "Tony_Roberts", "Carol_Kane", "Paul_Simon", "Janet_Margolin"]   
      film_actor_hash["The Godfather"]             = ["Marlon_Brando", "Al_Pacino", "James_Caan", "Robert_Duvall", "Diane_Keaton", "John_Cazale"]
      film_actor_hash["Random Movie"]              = ["Random_Actor1", "Random_Actor2", "Random_Actor3", "Random_Actor4", "Random_Actor5", "Random_Actor6"]
    
      expect(Graph.find_kevin_bacon("Random_Actor4")).to eq "There is no connection or connection is longer than 6 edges!"
    end
  end
end  