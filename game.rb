class Game

  attr_reader :current_player

  
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    
    @current_player = @player1
  end

  def change_player
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1

  end



  def new_question
    @question = Questions.new

    @question.new_question
    print '> '

    answer = gets.chomp.to_i

    if answer == @question.num_answer
      puts "#{@current_player.name}: YES! You are correct."
      self.change_player
      puts "----- NEW TURN -----"
    else
      @current_player.life_drop
      self.change_player
      puts "----- NEW TURN -----"
    end

    if @current_player.life != 0
      self.new_question
    end

  end
  
end
