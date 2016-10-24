module BookKeeping
  VERSION = 4
end

class Gigasecond

  def self.from(date)
    return date + 10**9
  end

end