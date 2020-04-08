require 'cont.rb'

shared_context 'context1' do
  before do
    @cc = described_class.new(7)
    @g = 5
    #conter = 5
  end
  #conter = 5
  #conter = Cont.new(7)
  let(:con) { Cont.new(7) }
  let(:subject) { described_class.new(7) }
  subject = Cont.new(7)
end

describe Cont do
  describe "# my_method" do
    context "of 7" do
      include_context 'context1'
      #puts @conter
      #conter = Cont.new(7)
      #subject = described_class.new(7)
      it "returns 7" do
        expect(subject.my_method).to eq(7)
      end
      it "returns 5" do
        expect(@g).to eq(5)
      end
    end
  end
end