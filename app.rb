require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/player_name' do
    session[:player_one] = Player.new(params[:player_name])
    redirect to('/rock-paper-scissors')
  end

  get '/rock-paper-scissors' do
    @player_one = session[:player_one]
    erb(:rock_paper_scissors)
  end

  post '/player_move' do
    session[:player_one].choose(params[:player_move])
    redirect to('/result')
  end

  get '/result' do
    @player_one = session[:player_one]
    erb(:game)
  end

end
