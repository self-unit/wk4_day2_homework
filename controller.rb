require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/rps.rb')
also_reload('./models/*')

get '/' do
    game = RPS.new("random", "random")
    @player1 = game.random()
    @player2 = game.random()
  erb(:home)
end

get '/game/:player1/:player2' do
  game = RPS.new(params[:player1], params[:player2])
  @game = game.play()
  erb(:result)
end
