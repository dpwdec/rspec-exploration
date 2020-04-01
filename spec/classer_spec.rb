require 'classer.rb'

describe Classer do
  #let(:cl) { Classer.new }
  
  it "returns 7 when adding 5" do
    expect(subject.add_to(5)).to eq(7)
  end
  
  it "returns 12 when adding 10" do
    expect(subject.add_to(10)).to eq(13)
  end
end