require 'eacher.rb'

describe Eacher do
  before(:each) { Eacher.amount = 10 }
  
  it 'returns 15 when adding 5' do
    expect(subject.add_to(5)).to eq(15)
  end
  
  it 'returns 17 when adding 7' do
    expect(subject.add_to(7)).to eq(17)
  end
end