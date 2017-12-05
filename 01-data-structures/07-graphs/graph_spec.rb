include RSpec

require_relative 'graph'

RSpec.describe Graph, type: Class do
  let(:film_actor_hash) { Graph.new }

  describe "find_kevin_bacon" do
	it "returns the number of edges connecting passed actor to Kevin_Bacon" do
	  film_actor_hash                              = {	
      
      'Footloose'                  => ['Kevin Bacon', 'Lori Singer', 'Dianne Wiest', 'John Lithgow', 'Sarah Jessica Parker', 'Chris Penn'],
      'The Man with One Red Shoe'  => ['Tom Hanks', 'Dabney Coleman', 'Lori Singer', 'Charles Durning', 'Carrie Fisher', 'Jim Belushi'],
      'Hannah and Her Sisters'     => ['Barbara Hershey', 'Dianne Wiest', 'Woody Allen', 'Julie Kavner', 'Ira Wheeler', 'Joanna Gleeson'],
      'Annie Hall'                 => ['Woody Allen', 'Diane Keaton', 'Tony Roberts', 'Carol Kane', 'Paul Simon', 'Janet Margolin'],   
      'The Godfather'              => ['Marlon Brando', 'Al Pacino', 'James Caan', 'Robert Duvall', 'Diane Keaton', 'John Cazale'],
      'Random Movie'               => ['Random Actor1', 'Random Actor2', 'Random Actor3', 'Random Actor4', 'Random Actor5', 'Random Actor6']
      
      }
      
      expect(Graph.find_kevin_bacon('Dabney_Coleman')).to eq ['The Man with One Red Shoe', 'Lori_Singer', 'Footloose']
    end

    it "returns the number of edges connecting passed actor to Kevin_Bacon" do
      film_actor_hash                              = {	
      
      'Footloose'                  => ['Kevin Bacon', 'Lori Singer', 'Dianne Wiest', 'John Lithgow', 'Sarah Jessica Parker', 'Chris Penn'],
      'The Man with One Red Shoe'  => ['Tom Hanks', 'Dabney Coleman', 'Lori Singer', 'Charles Durning', 'Carrie Fisher', 'Jim Belushi'],
      'Hannah and Her Sisters'     => ['Barbara Hershey', 'Dianne Wiest', 'Woody Allen', 'Julie Kavner', 'Ira Wheeler', 'Joanna Gleeson'],
      'Annie Hall'                 => ['Woody Allen', 'Diane Keaton', 'Tony Roberts', 'Carol Kane', 'Paul Simon', 'Janet Margolin'],   
      'The Godfather'              => ['Marlon Brando', 'Al Pacino', 'James Caan', 'Robert Duvall', 'Diane Keaton', 'John Cazale'],
      'Random Movie'               => ['Random Actor1', 'Random Actor2', 'Random Actor3', 'Random Actor4', 'Random Actor5', 'Random Actor6']
      
      }
      expect(Graph.find_kevin_bacon('Tony_Roberts')).to eq ['Annie Hall', 'Woody_Allen', 'Hannah and Her Sisters', 'Dianne_Wiest', 'Footloose']
    end

    it "returns the number of edges connecting passed actor to Kevin_Bacon" do
      film_actor_hash                              = {	
      
      'Footloose'                  => ['Kevin Bacon', 'Lori Singer', 'Dianne Wiest', 'John Lithgow', 'Sarah Jessica Parker', 'Chris Penn'],
      'The Man with One Red Shoe'  => ['Tom Hanks', 'Dabney Coleman', 'Lori Singer', 'Charles Durning', 'Carrie Fisher', 'Jim Belushi'],
      'Hannah and Her Sisters'     => ['Barbara Hershey', 'Dianne Wiest', 'Woody Allen', 'Julie Kavner', 'Ira Wheeler', 'Joanna Gleeson'],
      'Annie Hall'                 => ['Woody Allen', 'Diane Keaton', 'Tony Roberts', 'Carol Kane', 'Paul Simon', 'Janet Margolin'],   
      'The Godfather'              => ['Marlon Brando', 'Al Pacino', 'James Caan', 'Robert Duvall', 'Diane Keaton', 'John Cazale'],
      'Random Movie'               => ['Random Actor1', 'Random Actor2', 'Random Actor3', 'Random Actor4', 'Random Actor5', 'Random Actor6']
      
      }
      expect(Graph.find_kevin_bacon('Marlon_Brando')).to eq "There is no connection or connection is longer than 6 edges!"
    end

    it "returns the number of edges connecting passed actor to Kevin_Bacon" do
      film_actor_hash                              = {	
      
      'Footloose'                  => ['Kevin Bacon', 'Lori Singer', 'Dianne Wiest', 'John Lithgow', 'Sarah Jessica Parker', 'Chris Penn'],
      'The Man with One Red Shoe'  => ['Tom Hanks', 'Dabney Coleman', 'Lori Singer', 'Charles Durning', 'Carrie Fisher', 'Jim Belushi'],
      'Hannah and Her Sisters'     => ['Barbara Hershey', 'Dianne Wiest', 'Woody Allen', 'Julie Kavner', 'Ira Wheeler', 'Joanna Gleeson'],
      'Annie Hall'                 => ['Woody Allen', 'Diane Keaton', 'Tony Roberts', 'Carol Kane', 'Paul Simon', 'Janet Margolin'],   
      'The Godfather'              => ['Marlon Brando', 'Al Pacino', 'James Caan', 'Robert Duvall', 'Diane Keaton', 'John Cazale'],
      'Random Movie'               => ['Random Actor1', 'Random Actor2', 'Random Actor3', 'Random Actor4', 'Random Actor5', 'Random Actor6']
      
      }
      expect(Graph.find_kevin_bacon('Random_Actor4')).to eq "There is no connection or connection is longer than 6 edges!"
    end
  
  end
end  