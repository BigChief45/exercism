class Robot

  attr_reader :name

  def initialize
    @random = Random.new
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  private

  def generate_name
    (0..1).map { (65 + @random.rand(26)).chr }.join << (@random.rand(0..999).to_s)
  end

end

module BookKeeping
  VERSION = 2
end