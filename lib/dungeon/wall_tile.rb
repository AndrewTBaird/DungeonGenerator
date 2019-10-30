require 'gosu'
require 'pry'

class WallTile
  def initialize x_index, y_index, window_height, window_width, isTunnel
    @image = Gosu::Image.new(isTunnel ? '../media/crystal_wall00.png' : '../media/brick_brown7.png')
    @x_index = x_index
    @y_index = y_index
    @window_height = window_height
    @window_width = window_width
  end

  def draw
    x = @window_width / 40 * @x_index
    y = @window_height / 40 * @y_index

    @image.draw(x, y, 1)
  end
end
