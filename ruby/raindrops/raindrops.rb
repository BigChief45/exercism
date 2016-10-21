class Raindrops
  
  require 'prime'
  
  def self.convert(number)
    raindrop_speak = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    
    raindrop_factors = number.prime_division.map(&:first) & raindrop_speak.keys
    
    return number.to_s if raindrop_factors.empty?
    
    raindrop_factors.inject("") { |s, factor| s << raindrop_speak[factor] }
  end
  
end

module BookKeeping
  VERSION = 3
end