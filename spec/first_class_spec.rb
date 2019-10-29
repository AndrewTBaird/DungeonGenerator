require "spec_helper"
require "first_class"

describe "first class" do
  it { expect(FirstClass.hi).to eq("hello world") }
end
