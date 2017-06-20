require 'sinatra'
require 'sinatra/reloader'

S_NUMBER = rand(101)
@@count = 5

get '/' do
  S_NUMBER = rand(101) if @@count == 0
  guess = params["guess"].to_i
  message = check_guess(guess)
  color = color_check(message)
  result = result(message)
  erb :index, :locals => {:guess => guess, :message => message, :color => color, :result => result}
end

def check_guess(guess)
  @@count -= 1
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

def result(message)
  if message.include?("Correct") == false && @@count == 0
    @@count = 5
    p "You’ve lost and a new number has been generated! The secret number is #{S_NUMBER}"
  elsif message.include?("Correct")
    @@count = 0
    p "You win. A new number has been generated."
  else
    false
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
