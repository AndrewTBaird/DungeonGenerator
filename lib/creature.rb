class Creature

  attr_accessor :position

  def initialize(name, hitpoints, position)
    @name = name
    @hitpoints = hitpoints
    @position = position
  end

  def walk(direction)
    case direction
    when "down"
      @position[0]+= 1
    when "up"
      @position[0]-= 1
    when "right"
      @position[1]+= 1
    when "left"
      @position[1]-= 1
    else
      print 'Invalid walk direction'
    end
  end

  def to_s
    "#{@name} : #{@hitpoints} hp"
  end

end
