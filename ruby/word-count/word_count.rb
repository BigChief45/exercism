class Phrase
  IGNORE = [':', '!', '&', '@', '$', '%', '^', '&', '.']

  def self.sanitize(phrase)
    phrase.downcase.delete(IGNORE.join).gsub(/'\s|\s'|,/, ' ')
  end

  def initialize(phrase)
    @phrase = self.class.sanitize(phrase)
  end

  def word_count
    count = Hash.new(0)
    @phrase.split(' ').each { |word| count[word] += 1 }

    count
  end
end

module BookKeeping
  VERSION = 1
end
