require 'sinatra'
require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  

end
