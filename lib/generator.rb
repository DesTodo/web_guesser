require './lib/web_guesser'

class Generator
  attr_reader :number

  def random
    @number = rand(101)
  end

  #Hello, World, it says "The secret number is #{number}" where X is the secret number
  # Make sure that when you refresh the web page you see the same number each time

end
