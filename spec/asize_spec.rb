require 'asize.rb'

describe Asize do
  let(:asize_three) { Asize.new([5, 7, 9]) }
  let(:asize_five) { Asize.new([2, 4, 6, 8, 10]) }
  
  # Test for intialized array sizes
  context "initialized with three items" do
    it "says it has three items" do
      expect(asize_three.a_length).to eq(3)
    end
  end
  
  context "initialized with five items" do
    it "says it has five items" do
      expect(asize_five.a_length).to eq(5)
    end
  end
  
  it "is int" do
    expect(asize_three.a_length).to be_a_kind_of(Integer)
  end
  
  it "isnt float" do
    expect(asize_three.a_length).to_not be_a_kind_of(Float)
  end
  
end