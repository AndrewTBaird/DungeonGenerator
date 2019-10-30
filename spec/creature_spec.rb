require 'spec_helper'
require 'creature'

describe Creature do
  let(:creature) { Creature.new("jeff the goblin", 22, [2, 2]) }

  describe "#walk" do
    it "walks up" do
      creature.walk("up")
      expect(creature.position).to eq([1, 2])
    end

    it "walks down" do
      creature.walk("down")
      expect(creature.position).to eq([3, 2])
    end

    it "walks right" do
      creature.walk("right")
      expect(creature.position).to eq([2, 3])
    end

    it "walks left" do
      creature.walk("left")
      expect(creature.position).to eq([2, 1])
    end
  end
end
