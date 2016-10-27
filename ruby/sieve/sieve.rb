class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    @primes ||= generate_primes
  end

  private

  def generate_primes
    marks = {}
    2.upto(@limit) { |i| marks[i] = false }

    (2..Math.sqrt(@limit)).each do |p|
      (p**2..@limit).step(p) { |i| marks[i] = true } unless marks[p] == true
    end

    return marks.select { |prime, selected| selected == false }.keys
  end

end

module BookKeeping
  VERSION = 1
end