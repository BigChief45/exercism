class Fixnum

  def to_roman
    roman_numerals = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }

    n = self
    roman_numeral = ''

    roman_numerals.each do |key, value|
      while n >= key do
        roman_numeral << value
        n -= key
      end
    end

    roman_numeral
  end

end

module BookKeeping
  VERSION = 2
end