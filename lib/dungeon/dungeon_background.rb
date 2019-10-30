require_relative 'dungeon'
require_relative 'wall_tile'
require 'pry'

class DungeonBackground
  def initialize game_height, game_width
    @dungeon = Dungeon.new(40, 40, 8, 50)
    @window_height = game_height
    @window_width = game_width
    @tiles = generate_background_tiles
  end

  def generate_background_tiles
    @dungeon.generate_tunnels
    tiles = []
    @dungeon.dungeon_array.each_with_index do |row, row_index|
      row.each_with_index do |col, col_index|
        tiles << WallTile.new(row_index, col_index, @window_height, @window_width, col == " ")
      end
    end

    tiles
  end

  def draw
    @tiles.each do |tile|
      tile.draw
    end
  end
end
