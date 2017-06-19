require 'sinatra'
require 'sinatra/reloader'

S_NUMBER = rand(101)

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  color = color_check(message)
  erb :index, :locals => {:guess => guess, :message => message, :color => color}
end

def check_guess(guess)
  if guess - S_NUMBER < -5 && guess < S_NUMBER
    p "Way too low!!"
  elsif guess < S_NUMBER
    p "Too low!!"
  elsif guess - S_NUMBER > 5 && guess > S_NUMBER
    p "Way too high!!"
  elsif guess > S_NUMBER
    p "Too high!"
  else
    p "Correct! The secret number is #{S_NUMBER}"
  end
end

def color_check(message)
  if message.include?("Way")
    color = 'pink'
  elsif  message.include?("Too")
    color = 'orange'
  else
    color = 'green'
  end
end

# Translated to English, this means "render the ERB template named index and
# create a local variable for the template named number which has the same
# value as the number variable from this server code."
