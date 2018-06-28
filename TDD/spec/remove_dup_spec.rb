require 'remove_dup'
require 'rspec'
require 'game'

# RSpec.describe "RemoveDup" do 
  
  describe "my_uniq" do 
    let(:array) { [1, 2, 1, 3, 3] }
    
    it "returns uniq elements" do
       expect(array.my_uniq).to eq(array.uniq)  
    end
  
    let(:array) { [] }
    it "returns empty array" do
       expect(array.my_uniq).to be_empty  
    end
    
  end 

  
  describe "two sum" do
    let(:array) { [1] }
    it "returns nil if length is less than 2" do 
      expect([].two_sum).to be_nil
    end
    
    let(:array) { array = [-1, 0, 2, -2, 1] }
    it "returns pairs of positions that sum to 0" do 
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end
    

  end

  describe " my transpose" do
    let(:matrix) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    it "transposes the matrix" do 
      expect(my_transpose(matrix)).to eq(matrix.transpose) 
    end  
  end
  
  describe "stock picker" do 
    let(:array) { [10, 3, 5, 15, 12, 20] }
    it "returns most profitable pair of days" do 
      expect(stock_pick(array)).to eq([1,5])
    end
  end
# end 