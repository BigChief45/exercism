class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    @primes ||= generate_primes
  end

  private

  def generate_primes
    marks = []

    (2..Math.sqrt(@limit)).each do |p|
      (p**2..@limit).step(p) { |i| marks << i }
    end

    return (2..@limit).to_a - marks

  end

end

module BookKeeping
  VERSION = 1
end