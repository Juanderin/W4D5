require 'rspec'
require 'hanoi'

describe HanoiTowers do
  subject(:htowers) { HanoiTowers.new() }

  describe "#initialize" do
    it "create three towers as arrays" do
      expect(htowers.towers.length).to eq(3)
    end
  end
end