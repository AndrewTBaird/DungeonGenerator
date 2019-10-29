require "spec_helper"
require "dungeon"

describe "#draw_dungeon" do
  dungeon = Dungeon.new(3, 2)
  it { expect(dungeon.draw).to eq("\n00\n00\n00") }
end
