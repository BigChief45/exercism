module BookKeeping
  VERSION = 4
end

class Complement
  
  def self.of_dna(dna_strand)
    rna_transcription = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    
    dna_strand.chars.map do |nucleotide|
      return '' unless rna_transcription.has_key?(nucleotide)
      rna_transcription[nucleotide]
    end.join
  end
  
end