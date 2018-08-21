class RPS
  attr_reader :player1score, :player2score
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1score = 0
    @player2score = 0
  end

  def random
    play_array = ["rock", "paper", "scissors"]
    return play_array.shuffle.first
  end

  def play
    if @player1 == @player2
      @player1score += 1
      @player2score += 1
      return "Both players are tied!"
    else
      if @player1 == "rock"
        if @player2 == "scissors"
          @player1score += 1
          return "Player 1 wins with rock!"
        end
        if @player2 == "paper"
          @player2score += 1
          return "Player 2 wins with paper!"
        end
      end
      if @player1 == "scissors"
        if @player2 == "rock"
          @player2score += 1
          return "Player 2 wins with rock!"
        end
        if @player2 == "paper"
          @player1score += 1
          return "Player 1 wins with scissors!"
        end
      end
      if @player1 == "paper"
        if @player2 == "rock"
          @player1score += 1
          return "Player 1 wins with paper!"
        end
        if @player2 == "scissors"
          @player2score += 1
          return "Player 2 wins with scissors!"
        end
      end
    end
  end

end
