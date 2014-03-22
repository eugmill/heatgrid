module Heatgrid
  class Grid
    attr_accessor :original_grid, :normalized_grid
    
    def initialize(in_array)
      self.original_grid = in_array
      normalized_grid = normalize(in_array)
    end

    def to_rgb_grid

    end

    def normalize(in_array)

    end

  end
end