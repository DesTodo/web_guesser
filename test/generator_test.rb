require './test/test_helper'
require './lib/generator'
require './lib/web_guesser'

class GeneratorTest < Minitest::Test
#Generate a number between 0 and 100
  def test_random_generates_random_number
    generator = Generator.new

    assert_instance_of Integer, generator.random
    assert generator.random <= 101
    assert generator.random >= 0
    assert_equal generator.random, generator.number
  end

  def test_guess_too_high_message
    generator = Generator.new

    assert generator.random.too_high if params["guess"].to_i  > number
  end

end
