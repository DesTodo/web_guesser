#require './lib/web_guesser'

class Generator
  attr_reader :number, :message

  def random
    @number = rand(101)
  end

  def guess
    guess = params["guess"].to_i
  end

  def message
    @message = p "Too high"
  end

end
