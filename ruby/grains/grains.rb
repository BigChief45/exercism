module Grains
  def self.square(n)
    raise ArgumentError if n <= 0 || n > 64

    2**(n-1)
  end

  def self.total
    (1..64).inject { |sum, i| sum + square(i) }
  end
end

module BookKeeping
  VERSION = 1
end