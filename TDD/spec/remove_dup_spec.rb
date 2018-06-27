require 'remove_dup'
require 'rspec'

RSpec.describe "RemoveDup" do 
  
  describe "my_uniq" do 
    let(:array) { [1, 2, 1, 3, 3] }
    it "returns uniq elements" do
       expect(array.my_uniq).to eq(array.uniq)  
    end
  end 
  
  describe "two sum" do
    let(:array) { [-1, 0, 2, -2, 1] }
    it "returns pairs of positions that sum to 0" do 
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

end