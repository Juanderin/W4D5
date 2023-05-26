require 'rspec'
require 'hanoi'

describe HanoiTowers do
  subject(:htowers) { HanoiTowers.new() }

  describe "#initialize" do
   
    it "create three towers as arrays" do
      expect(htowers.towers.length).to eq(3)
    end

    it 'sets moves equal to 0' do
      expect(htowers.moves).to eq(0)
    end

  end 

  describe "#fill" do 
    it 'fills the first stack with five discs' do 
      htowers.fill
      expect(htowers.towers[0]).to eq([5,4,3,2,1])
    end 
  end 

  describe '#move' do 
    it 'places a disk in the appropriate tower' do 
      htowers.move(0, 1)
      expect(htowers.towers[0]).to eq([5,4,3,2])
    end 
  end 

end 