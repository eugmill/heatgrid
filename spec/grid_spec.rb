require 'spec_helper'

TEST = [
  [1,2,3,4],
  [2,3,4,5],
  [3,4,5,6],
  [4,5,6,7]
]

RESULT = 
[
  [0.14285714285714285,0.2857142857142857,0.42857142857142855,0.5714285714285714],
  [0.2857142857142857,0.42857142857142855,0.5714285714285714,0.7142857142857143],
  [0.42857142857142855,0.5714285714285714,0.7142857142857143,0.8571428571428571],
  [0.5714285714285714, 0.7142857142857143, 0.8571428571428571, 1.0]
]

RGB = [
  [[0, 72, 182], [0, 145, 109], [0, 218, 36], [36, 218, 0]],
  [[0, 145, 109], [0, 218, 36], [36, 218, 0], [109, 145, 0]],
  [[0, 218, 36], [36, 218, 0], [109, 145, 0], [182, 72, 0]],
  [[36, 218, 0], [109, 145, 0], [182, 72, 0], [255, 0, 0]]
]

describe Heatgrid::Grid do
  let(:grid) {Heatgrid::Grid.new(TEST)}

  describe "#new" do
    
    it "saves the original input" do
      expect(grid.original_grid).to eq(TEST)
    end

    it "finds the maximum value" do
      expect(grid.max_value).to eq(7)
    end

    it "calculates the normalized grid" do
      expect(grid.normalized_grid).to eq(RESULT)
    end

    it "converts normalized values to rgb" do
      expect(grid.normalized_to_rgb(0.0)).to eq([0,0,255])
      expect(grid.normalized_to_rgb(0.1)).to eq([0,51,204])
      expect(grid.normalized_to_rgb(0.25)).to eq([0,127,127])
      expect(grid.normalized_to_rgb(0.5)).to eq([0,255,0])
      expect(grid.normalized_to_rgb(0.75)).to eq([127,127,0])
      expect(grid.normalized_to_rgb(1.0)).to eq([255,0,0])
      expect(grid.normalized_to_rgb(0.9)).to eq([204,50,0])
    end

    it "gets the rgb values" do
      expect(grid.rgb_grid).to eq(RGB)
    end

  end

end

