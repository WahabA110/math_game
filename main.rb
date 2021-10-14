require './game'
require './player'
require './questions'

class Main
  newGame = Game.new
  newGame.new_question
end