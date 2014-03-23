require 'spec_helper'

# RGB = [
#   [[0, 72, 182], [0, 145, 109], [0, 218, 36], [36, 218, 0]],
#   [[0, 145, 109], [0, 218, 36], [36, 218, 0], [109, 145, 0]],
#   [[0, 218, 36], [36, 218, 0], [109, 145, 0], [182, 72, 0]],
#   [[36, 218, 0], [109, 145, 0], [182, 72, 0], [255, 0, 0]]
# ]

describe Heatgrid::Image do
  let(:image) {Heatgrid::Image.new}  
  it "initializes with rgb" do
    Heatgrid::Image.new
  end
end

