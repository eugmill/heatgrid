require 'pry'
module Heatgrid
  class Grid
    attr_accessor :original_grid, :normalized_grid
    @max
    
    def initialize(in_array)
      self.original_grid = in_array
      self.normalized_grid = normalize(in_array)
    end

    def rgb_grid
      normalized_grid.map do |row|
        row.map do |val|
          normalized_to_rgb(val)
        end
      end
    end

    def normalized_to_rgb(num)
      if (0..0.5).include?(num)
        [0,(255 * (num*2)).to_i,(255*((0.5-num)*2)).to_i]
      else
        [(255 * (num-0.5)*2).to_i,(255*(1-2*(num-0.5))).to_i,0]
      end
    end

    def normalize(in_array)
      max = max_value
      in_array.map{|row| row.map{|v| v/max.to_f}}
    end

    def max_value
      @max ||= original_grid.map(&:max).max
    end

  end
end