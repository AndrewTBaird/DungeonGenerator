#!/usr/bin/env ruby
require './dungeon'
require './hero'
require 'pry'

def walk_and_draw dungeon, hero, direction
  hero.walk direction
  print dungeon.draw
end

dungeon = Dungeon.new(10, 10, 4, 20)
dungeon.generate_tunnels
print dungeon.draw
print "\n\n\n"

hero = Hero.new("Andrew the Great", 99, [0, 0], "mage")

dungeon.add_creature hero



