require "spec_helper"
require "hello_world"

describe "hellow world" do
  it { expect(HelloWorld.hi).to eq("hello world") }

end
