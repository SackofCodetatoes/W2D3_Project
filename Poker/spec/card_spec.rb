require 'rspec'
require 'card'

# Dir["/lib/*.rb"].each {|file| require file }
describe "Poker" do 
  describe "card" do 
    describe "#card_good" do 
      it "returns a good card" do 
        expect(Card).to eq([])
      end
    end
    
  end 
  
  
end