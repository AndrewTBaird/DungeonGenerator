require './creature'

class Hero < Creature
  def initialize(name, hitpoints, position, fighting_style)
    super(name, hitpoints, position)
    @fighting_style = fighting_style
  end
end
