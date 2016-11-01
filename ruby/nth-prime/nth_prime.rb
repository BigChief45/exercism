class Prime

  def self.nth(n)
    raise ArgumentError, "There is not zeroth prime." if n == 0

    generate_primes.take(n).last
  end

  def self.prime?(number)
    return false if number == 1

    (2..Math.sqrt(number)).each { |i| return false if number % i == 0 }
    true
  end

  def self.generate_primes
    Enumerator.new do |y|
      i = 2

      loop do
        y << i if prime?(i)
        i += 1
      end
    end
  end

end

module BookKeeping
  VERSION = 1
end