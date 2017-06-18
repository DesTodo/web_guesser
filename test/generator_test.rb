require './test/test_helper'
require './lib/generator'

class GeneratorTest < Minitest::Test
#Generate a number between 0 and 100
  def test_random_generates_random_number
    generator = Generator.new

    assert_instance_of Integer, generator.random
    assert generator.random <= 101
    assert generator.random >= 0
    assert_equal generator.random, generator.number
  end

end
