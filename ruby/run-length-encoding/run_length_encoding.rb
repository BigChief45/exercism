module RunLengthEncoding
  def self.encode(string)
    return '' if string.empty?

    encoding = ''
    string.scan(/((\w|\s)\2*)/).map(&:first).each do |char|
      encoding << char.length.to_s unless char.length == 1
      encoding << char[0]
    end

    encoding
  end

  def self.decode(string)
    return '' if string.empty?

    decoding = ''
    string.scan(/(\d*)(\w|\s)/).each do |char|
      count = char.first.to_i > 1 ? char.first.to_i : 1
      decoding << char.last * count
    end

    decoding
  end
end

module BookKeeping
  VERSION = 3
end
