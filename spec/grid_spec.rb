require 'spec_helper'

TEST = [
  [1,2,3,4],
  [2,3,4,5],
  [3,4,5,6]
]

describe Heatgrid::Grid do
  describe "#new" do
    it "saves the original input" do
      grid = Heatgrid::Grid.new(TEST)

      expect(grid.original_grid).to eq(TEST)
    end
  end


end

