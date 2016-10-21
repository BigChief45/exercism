module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    raise(ArgumentError, "Strand lengths are not equal -- Strand 1: #{strand1.length}, Strand 2: #{strand2.length}") unless strand1.length == strand2.length
    
    strand1.chars.each_with_index.count { |i, index| i != strand2[index] }
  end
end