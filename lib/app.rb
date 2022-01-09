require 'sinatra/base'
require 'sinatra/reloader'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here

  # # Start the server if this file is executed directly (do not change the line below)
  
# require 'sinatra'
# require 'sinatra/reloader' if development?


  get '/' do "hello world" end
  get '/secret' do "hello! ruby" end
  get '/route_a' do "hello route_a" end

  get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
  e rb(:index)
  end

  post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
  end

  get '/cat-form' do
    erb(:cat_form)
  end

  run! if app_file == $0
end
