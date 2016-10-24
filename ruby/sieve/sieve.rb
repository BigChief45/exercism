class Sieve

  def initialize(limit)
    @limit = limit
    @range= (2..limit)
  end

  def primes
    marks = []

    @range.each do |p|
      next if marks.include?(p)
      @range.each { |i| marks << i * p }
    end

    return @range.to_a - marks
  end

end

module BookKeeping
  VERSION = 1
end