module Binary
  def self.to_decimal(number)
    raise ArgumentError, 'Input must be a binary number' unless binary?(number)

    n = number.length

    number.split('').map(&:to_i).inject(0) do |sum, i|
      n -= 1
      sum + (i * 2**n)
    end
  end

  private

  def self.binary?(number)
    number.split('').map.all? { |digit| digit == '0' || digit == '1' }
  end
end

module BookKeeping
  VERSION = 3
end
