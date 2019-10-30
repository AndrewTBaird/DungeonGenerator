require 'gosu'
require './hero'
require 'pry'

class Game < Gosu::Window
  def initialize
    super(640, 480)
    self.caption = "Tutorial Game"

    @hero = Hero.new("Andrew the Great", 99, [0, 0])
    @hero.warp(320, 240)
  end

  def update
    if Gosu.button_down? Gosu::KB_LEFT
      @hero.move_left
    end
    if Gosu.button_down? Gosu::KB_RIGHT
      @hero.move_right
    end
    if Gosu.button_down? Gosu::KB_UP
      @hero.move_up
    end
    if Gosu.button_down? Gosu::KB_DOWN
      @hero.move_down
    end
    @hero.move
  end

  def draw
    @hero.draw
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
end

Game.new.show
