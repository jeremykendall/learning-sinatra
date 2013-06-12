# myapp.rb
require 'sinatra'
set :bind, "0.0.0.0"

not_found do
    halt 404, 'Page not found'
end

get '/' do
    'Hello, world!'
end

get '/form' do
    erb :form
end

post '/form' do
    "You said '#{params[:message]}'"
end

get '/secret' do
    erb :secret
end

post '/secret' do
    params[:secret].reverse
end

get '/hello/:name' do
    "Hello, #{params[:name]}!"
end

get '/about' do
    'A little about me.'
end
