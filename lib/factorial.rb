class Factorial
  def factorial_of(n)
    (1..n).inject(:*)
  end
end

class Digit
  def digit_sum(n)
    n.to_s.split("").map { |v| v.to_i }.inject(:+)
  end
end