class Robot

  attr_reader :name

  def initialize(seed=Random.new_seed)
    @random = Random.new(seed)
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  private

  def generate_name
    generate_chars << generate_numbers
  end

  def generate_chars
    ('A'..'Z').to_a.sample(2).join
  end

  def generate_numbers
    @random.rand(100..999).to_s
  end

end

module BookKeeping
  VERSION = 2
end