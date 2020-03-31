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
end