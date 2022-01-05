require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do "hello world" end
get '/secret' do "hello! ruby" end
get '/route_a' do "hello route_a" end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
