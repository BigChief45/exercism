module Grains
  CHESSBOARD = (1..64)

  def self.square(square_number)
    unless CHESSBOARD.include?(square_number)
      raise ArgumentError, 'The input must be a number between 1 and 64'
    end

    2**(square_number - 1)
  end

  def self.total
    CHESSBOARD.inject { |sum, i| sum + square(i) }
  end
end

module BookKeeping
  VERSION = 1
end
