require 'isexpect.rb'



describe Pect do
  context "returns a boolean as subject" do
    subject { "Hello".upcase }
    it { is_expected.to eq("HELLO") }
  end

  context "returns n" do
    #before do 
    #  subject = described_class.new("Hello")
    #end
    subject { described_class.new("Hello") }
    it "returns hello" do
      expect(subject.spit).to eq("Hello")
    end
  end
end

describe Mect do
  context "return g" do
    it "returns goodbye" do
      expect(subject.pit).to eq("goodbye")
    end
  end
end

describe Pect do
  context "return n" do
    subject { described_class.new("Hello") }
    it "returns hello" do
      expect { subject.add_count }.to change(subject, :count).to eq(11)
    end
    
    it "returns hello" do
      expect { subject.add_count }.to change(subject, :count).to eq(12)
    end
    
    it "returns goodbye" do
      subject = described_class.new("goodbye")
      expect(subject.spit).to eq("goodbye")
    end
  end
end