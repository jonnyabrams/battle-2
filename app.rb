require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  get '/confirmation' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb :confirmation
  end
 
  run! if app_file == $0
end