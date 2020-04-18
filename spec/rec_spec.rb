require 'rec.rb'

describe "Expectation" do
  it "fails" do
    dbl = double("Name", :foo => 3)
    expect(dbl).to receive(:foo)
    dbl.foo
  end
  
  it "passes" do
    dbl = spy("Double")
    dbl.foo
    expect(dbl).to have_received(:foo)
  end
end