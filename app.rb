require 'sinatra'
require_relative 'utils/integer_in_string.rb'

get '/' do
  "Index page"
end

get '/about' do
  "About page"
end

get '/roll-die' do
  "Your die roll is...#{rand(1..6)}"
end

get '/square/:number' do
  begin
    number = IntegerInString.new params[:number]
    number = number.to_i
    square = number*number
    return square.to_s
  rescue
    return "Heck. This is not a number"
  end
end

get '/cat' do
  send_file 'views/cat.html'
end

get '/home' do
  erb :home
end
