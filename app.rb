require 'sinatra'
require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/player_name' do
    session[:player_one] = params[:player_name]
    redirect to('/rock-paper-scissors')
  end

  get '/rock-paper-scissors' do
    @player_name = session[:player_one]
    erb(:rock_paper_scissors)
  end

end
