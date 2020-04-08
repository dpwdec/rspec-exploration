require 'collect.rb'
require 'rspec/collection_matchers'

describe Col do
  context "array of length 3" do
    array = [1, 2, 3]
    it "has a length of 3" do
      expect(array).to have_exactly(3).items
    end
  end
end