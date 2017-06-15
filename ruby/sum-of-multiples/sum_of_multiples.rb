class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(top)
    multiples = []

    @numbers.each do |i|
      (1...top).each { |k| multiples << k if k % i == 0 }
    end

    multiples.uniq.sum
  end
end

module BookKeeping
  VERSION = 1
end