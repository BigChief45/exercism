class Pangram
  def self.is_pangram?(sentence)
    ('a'..'z').each { |letter| return false unless sentence.downcase.include?(letter) }

    return true
  end
end

module BookKeeping
  VERSION = 2
end