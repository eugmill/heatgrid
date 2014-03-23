require 'spec_helper'

describe Heatgrid::Image do
  let(:image) {Heatgrid::Image.new}  
  let(:rgb) do 
    [
      [[0, 72, 182], [0, 145, 109], [0, 218, 36], [36, 218, 0]],
      [[0, 145, 109], [0, 218, 36], [36, 218, 0], [109, 145, 0]],
      [[0, 218, 36], [36, 218, 0], [109, 145, 0], [182, 72, 0]],
      [[36, 218, 0], [109, 145, 0], [182, 72, 0], [255, 0, 0]]
    ]
  end


  it "takes an array of rgb values" do
    image.from_rgb(rgb)
    expect(image.row_count).to eq(4)
    expect(image.column_count).to eq(4)
  end
end

