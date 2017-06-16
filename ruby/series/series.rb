class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    raise ArgumentError, 'Incorrect input' if length > @digits.length

    result = []

    @digits.split('').each_cons(length) { |i| result << i.join }

    result
  end
end
