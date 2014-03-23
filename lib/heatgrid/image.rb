require 'rmagick'

module Heatgrid
  class Image
    attr_accessor :data, :row_count, :column_count

    def initialize()

    end

    def from_rgb(rgb_array)
      self.data = rgb_array
      self.row_count = rgb_array.size
      self.column_count = rgb_array.first.size
    end

    def write(filename)
      canvas = Magick::ImageList.new
      canvas.new_image(1000,1000, Magick::HatchFill.new('white','gray90'))
      # (0..9).each do |x|
      #   (0..9).each do |y|
      #     tx,ty,bx,by = x*100,y*100,(x+1)*100,(y+1)*100
      #     color_str = "rgb(#{color[0]},#{color[1]},#{color[2]})"
      #     rect = Magick::Draw.new
      #     rect.stroke('rgb(255,0,0)')
      #     rect.fill(color_str)        
      #     rect.opacity(0.75)
      #     rect.rectangle(tx,ty,bx,by)
      #     rect.draw(canvas)
      #   end
      # end
      canvas.write("image.jpg")
    end

  end
end
