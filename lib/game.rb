require 'gosu'
require 'pry'
require_relative 'characters/hero'
require_relative 'dungeon/wall_tile'
require_relative 'dungeon/dungeon_background'

class Game < Gosu::Window
  def initialize
    super(640, 480)
    self.caption = "Tutorial Game"

    @background = DungeonBackground.new(self.height, self.width)

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
    @background.draw
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
