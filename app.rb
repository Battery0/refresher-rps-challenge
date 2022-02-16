require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/player_name' do
    session[:game] = Game.new(Player.new(params[:player_name]), Computer.new)
    redirect to('/rock-paper-scissors')
  end

  get '/rock-paper-scissors' do
    @player_one = session[:game].player1
    erb(:rock_paper_scissors)
  end

  post '/player_move' do
    session[:game].player1.choose(params[:player_move])
    session[:game].computer.move
    redirect to('/result')
  end

  get '/result' do
    @computer = session[:game].computer
    @player_one = session[:game].player1
    @result = session[:game].result
    erb(:game)
  end

end
