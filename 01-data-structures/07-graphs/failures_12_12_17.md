Failures:

  1) Graph find_kevin_bacon returns the number of edges connecting passed actor to Kevin_Bacon
     Failure/Error: expect(Graph.find_kevin_bacon('Dabney_Coleman')).to eq ['The Man with One Red Shoe', 'Lori_Singer', 'Footloose']
     
     TypeError:
       no implicit conversion of false into Array
     # ./graph.rb:35:in `&'
     # ./graph.rb:35:in `find_kevin_bacon'
     # ./graph_spec.rb:21:in `block (3 levels) in <top (required)>'

  2) Graph find_kevin_bacon returns the number of edges connecting passed actor to Kevin_Bacon
     Failure/Error: expect(Graph.find_kevin_bacon('Tony_Roberts')).to eq ['Annie Hall', 'Woody_Allen', 'Hannah and Her Sisters', 'Dianne_Wiest', 'Footloose']
     
     TypeError:
       no implicit conversion of false into Array
     # ./graph.rb:35:in `&'
     # ./graph.rb:35:in `find_kevin_bacon'
     # ./graph_spec.rb:35:in `block (3 levels) in <top (required)>'

  3) Graph find_kevin_bacon returns the number of edges connecting passed actor to Kevin_Bacon
     Failure/Error: expect(Graph.find_kevin_bacon('Marlon_Brando')).to eq "There is no connection or connection is longer than 6 edges!"
     
     TypeError:
       no implicit conversion of false into Array
     # ./graph.rb:35:in `&'
     # ./graph.rb:35:in `find_kevin_bacon'
     # ./graph_spec.rb:49:in `block (3 levels) in <top (required)>'

  4) Graph find_kevin_bacon returns the number of edges connecting passed actor to Kevin_Bacon
     Failure/Error: expect(Graph.find_kevin_bacon('Random_Actor4')).to eq "There is no connection or connection is longer than 6 edges!"
     
     TypeError:
       no implicit conversion of false into Array
     # ./graph.rb:35:in `&'
     # ./graph.rb:35:in `find_kevin_bacon'
     # ./graph_spec.rb:63:in `block (3 levels) in <top (required)>'

