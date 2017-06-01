module Year

  def self.leap?(year)
    (year % 100).zero? ? (year % 400).zero? : (year % 4).zero?
  end

end

module BookKeeping
  VERSION = 2
end