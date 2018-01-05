include RSpec

require_relative 'graph'
require_relative 'node'

RSpec.describe Graph, type: Class do
  let(:graph) { Graph.new }

  let(:kevin_bacon) { Node.new("Kevin Bacon")}
  let(:lori_singer) { Node.new("Lori Singer")}
  let(:diane_wiest) { Node.new("Diane Wiest")}
  let(:john_lithgow) { Node.new("John Lithgow")}
  let(:sarah_jessica_parker) { Node.new("Sarah Jessica Parker")}
  let(:chris_penn) { Node.new("Chris Penn")}
  let(:tom_hanks) { Node.new("Tom Hanks")}
  let(:dabney_coleman) { Node.new("Dabney Coleman")}
  let(:charles_durning) { Node.new("Charles Durning")}
  let(:carrie_fisher) { Node.new("Carrie Fisher")}
  let(:jim_belushi) { Node.new("Jim Belushi")}
  let(:barbara_hershey) { Node.new("Barbara Hershey")}
  let(:woody_allen){ Node.new("Woody Allen")}
  let(:julie_kavner) { Node.new("Julie Kavner")}
  let(:ira_wheeler) { Node.new("Ira Wheeler")}
  let(:joanna_gleeson) { Node.new("Joanna Gleeson")}
  let(:diane_keaton) { Node.new("Diane Keaton")}
  let(:tony_roberts) { Node.new("Tony Roberts")}
  let(:carol_kane) { Node.new("Carol Kane")}
  let(:paul_simon) { Node.new("Paul Simon")}
  let(:janet_margolin) { Node.new("Janet Margolin")}
  let(:marlon_brando) { Node.new("Marlon Brando")}
  let(:al_pacino) { Node.new("Al Pacino")}
  let(:james_caan) { Node.new("James Caan")}
  let(:robert_duvall) { Node.new("Robert Duvall")}
  let(:john_cazale) { Node.new("John Cazale")}
  let(:kevin_pastrami) {Node.new("Kevin Pastrami")}

  let(:film_hash) {Hash.new}
  
  before do

  film_hash["Footloose"] = [kevin_bacon, lori_singer, diane_wiest, john_lithgow, sarah_jessica_parker, chris_penn]
  film_hash["The Man With One Red Shoe"] = [tom_hanks, dabney_coleman, lori_singer, charles_durning, carrie_fisher, jim_belushi]
  film_hash["Hannah and Her Sisters"] = [barbara_hershey, diane_wiest, woody_allen, julie_kavner, ira_wheeler, joanna_gleeson]
  film_hash["Annie Hall"] = [woody_allen, diane_keaton, tony_roberts, carol_kane, paul_simon, janet_margolin]
  film_hash["The Godfather"] = [marlon_brando, al_pacino, james_caan, robert_duvall, diane_keaton, john_cazale]

  kevin_bacon.set_films(film_hash)
  lori_singer.set_films(film_hash)
  diane_wiest.set_films(film_hash)
  john_lithgow.set_films(film_hash)
  sarah_jessica_parker.set_films(film_hash)
  chris_penn.set_films(film_hash)
  tom_hanks.set_films(film_hash)
  dabney_coleman.set_films(film_hash)
  charles_durning.set_films(film_hash)
  carrie_fisher.set_films(film_hash)
  jim_belushi.set_films(film_hash)
  barbara_hershey.set_films(film_hash)
  woody_allen.set_films(film_hash)
  julie_kavner.set_films(film_hash)
  ira_wheeler.set_films(film_hash)
  joanna_gleeson.set_films(film_hash)
  diane_keaton.set_films(film_hash)
  tony_roberts.set_films(film_hash)
  carol_kane.set_films(film_hash)
  paul_simon.set_films(film_hash)
  janet_margolin.set_films(film_hash)
  marlon_brando.set_films(film_hash)
  al_pacino.set_films(film_hash)
  james_caan.set_films(film_hash)
  robert_duvall.set_films(film_hash)
  john_cazale.set_films(film_hash)
  kevin_pastrami.set_films(film_hash)

  end

  describe "finds connecting movies" do
    it "shows the single connection if the target and KB are in the same film" do
      expected_output = ["Footloose"]
      expect(graph.find_kevin_bacon(lori_singer)).to eq(expected_output)
    end
    
    it "shows connections for a target 1 away" do
      expected_output = ["The Man With One Red Shoe", "Footloose"]
      expect(graph.find_kevin_bacon(carrie_fisher)).to eq(expected_output)
    end

    it "shows connections for target multiple nodes away" do
      expected_output = ["The Godfather", "Annie Hall", "Hannah and Her Sisters", "Footloose"]
      expect(graph.find_kevin_bacon(marlon_brando)).to eq(expected_output)
    end

    it "shows connections for unexpected value" do
      expected_output = "Could not find connection"
      expect(graph.find_kevin_bacon(kevin_pastrami)).to eq(expected_output)
    end
  end
end
  