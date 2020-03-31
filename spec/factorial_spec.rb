require 'factorial.rb'

describe Factorial do
  it "finds the factorial of 5" do
   expect(subject.factorial_of(5)).to eq(120)
  end
end

describe Digit do
  it "sums digits of 12" do
    expect(subject.digit_sum(12)).to eq(3)
  end
  it "sums digits of 326" do
    expect(subject.digit_sum(326)).to eq(11)
  end
  it "sums digits of 0" do
    expect(subject.digit_sum(0)).to eq(0)
  end
  it "sums digits of 20456" do
    expect(subject.digit_sum(20456)).to eq(17)
  end
end