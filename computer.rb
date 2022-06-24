class Computer
  attr_accessor :secret_code

  def initialize
    @secret_code = Array.new(4)
    @colors = %w[red orange yellow green blue purple]
  end

  def create_secret_code
    for a in 1..4 do
      secret_code << colors.sample
      print secret_code
    end

    secret_code
  end
end