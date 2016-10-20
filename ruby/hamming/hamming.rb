module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    return 0 if strand1.empty? || strand2.empty?
    raise(ArgumentError, "Strand lengths must be equal.") unless strand1.length == strand2.length
    
    strand1.chars.each_with_index.count { |i, index| i != strand2[index] }
  end
end