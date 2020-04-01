require 'eacher.rb'

describe Eacher do
  let!(:n_each) { Eacher.new }
  context 'when adding' do
    before(:each) { Eacher.amount = 10 }
    
    it 'returns 15 when adding 5' do
      expect(n_each.add_to(5)).to eq(15)
    end
    
    it 'returns 17 when adding 7' do
      expect(n_each.add_to(7)).to eq(17)
    end
  end
  context 'when instantiated' do
    before(:each) { n_each.setup }
    
    it 'return 20 when multiplying set up by 2' do
      expect(n_each.mult_to(2)).to eq(20)
    end
  end
end