require 'sinatra'
require 'sinatra/reloader'
require './lib/generator'

number = Generator.new.random
get '/' do
  "The secret number is #{number}"
end

# count = 0
# get '/count' do
#   count += 2
#   "The count is currently #{count}"
# end
#Start the server with ruby web_guesser.rb
