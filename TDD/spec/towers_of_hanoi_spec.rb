require 'remove_dup'
require 'rspec'

# RSpec.describe "RemoveDup" do 
describe "Towers of Hanoi" do
  before(:each) do  
    @game = Game.new
  end
  
  describe "#initialize" do 
    it "tower0 should include 3 disks" do
       expect(@game.tower[0]).to eq([1,2,3])  
    end
    it "tower1 should include 0 disks" do
      expect(@game.tower[1]).to be_empty 
    end
    it "tower2 should include 0 disks" do
       expect(@game.tower[2]).to be_empty  
    end
  end 
    
  
  
  # let(:0) { 0 = Game.new }
  

  describe "#won?" do 
    before(:each) { @game.tower[1] = [1, 2, 3] }
    it "won? return true if game is won" do 
      expect(@game.won?).to be_true
    end
  end 
    
  describe "#valid_move" do 
    it "doesnt add to tower that doesnt exist" do 
      expect{@game.move(0, 5)}.to raise_error(ArgumentError)
    end
    it "takes top disc from tower" do 
      before do 
        @game.tower[0] = [2,3]
        @game.move(0, 1)
      end
      expect(@game.tower[0]).to be([3])
    end
    
    it "doesnt add bigger disc on top of smaller one" do 
      before do 
        @game.tower[0] = [3]
        @game.tower[1] = [1]
      end
      expect{@game.move(0, 1)}.to raise_error(ArgumentError)
    end
  end
  
  describe "#move" do 
    before do 
      tower[0] = [1,2,3]
      tower[1] = []
    end
    it "moves disk from one tower to another" do 
      expect(@game.move(0, 1)).to eq(@game.tower[0] == [2,3])
      expect(@game.tower[1]).to eq(@game.tower[1] == [1])
    end
  end
    
end
  #test three towers
  #test gets input from user
  # #move moves a disk 

  
  