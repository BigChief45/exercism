class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    @primes ||= generate_primes
  end

  private

  def generate_primes
    marks = Array.new(@limit + 1, false)
    marks[0], marks[1] = true

    (2..Math.sqrt(@limit)).each do |p|
      (p**2..@limit).step(p) { |i| marks[i] = true } unless marks[p] == true
    end

    return marks.each_index.select { |i| marks[i] == false }
  end

end

module BookKeeping
  VERSION = 1
end