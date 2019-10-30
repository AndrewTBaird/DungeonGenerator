require "spec_helper"
require "dungeon"

describe Dungeon do

  describe "#generate_tunnels" do
    let(:dungeon) { Dungeon.new(40, 40, 8, 100) }

    it "generates tunnels" do
      dungeon.generate_tunnels
      print dungeon.draw
    end
  end

  describe "#draw_dungeon" do
    let(:dungeon) { Dungeon.new(3, 2, 2, 1) }
    it { expect(dungeon.draw).to eq("\nXX\nXX\nXX") }
  end
end

