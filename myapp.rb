# myapp.rb
require 'sinatra'
set :bind, "0.0.0.0"

get '/' do
    'Hello, world!'
end

get '/form' do
    erb :form
end

post '/form' do
    "You said '#{params[:message]}'"
end

get '/hello/:name' do
    "Hello, #{params[:name]}!"
end

get '/about' do
    'A little about me.'
end
