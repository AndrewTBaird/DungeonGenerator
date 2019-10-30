require_relative 'creature'
require 'gosu'

class Hero < Creature
  def initialize(name, hitpoints, position)
    super
    @image = Gosu::Image.new("../media/hero.png")
    @x = @y = 0.0
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def move_left
    @x -= 3
  end

  def move_right
    @x += 3
  end

  def move_up
    @y -= 3
  end

  def move_down
    @y += 3
  end

  def move
    @x %= 640
    @y %= 480
  end

  def draw
    @image.draw(@x, @y, 2)
  end
end
