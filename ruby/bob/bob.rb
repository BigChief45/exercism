class Bob

  def self.hey(remark)
    case remark
    when nothing?
      'Fine. Be that way!'
    when yell?
      'Whoa, chill out!'
    when question?
      'Sure.'
    else
      'Whatever.'
    end
  end

  private

  def self.question?
    -> (r) { r[-1] == '?' }
  end

  def self.yell?
    lambda do |r|
      r = r.delete('^A-Za-z')
      return false if r.empty?

      r.split('').all? { |c| /[[:upper:]]/.match(c) }
    end
  end

  def self.nothing?
    -> (r) { r.strip.size.zero? }
  end

end
