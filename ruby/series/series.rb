class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    raise ArgumentError, 'Incorrect input' if length > @digits.length

    @digits.chars.each_cons(length).map(&:join)
  end
end
