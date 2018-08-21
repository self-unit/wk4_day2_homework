class RPS

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1score = 0
    @player2score = 0
  end

  def play
    if @player1 == @player2
      return "Both players are tied!"
      @player1score += 1
      @player2score += 1
    else
      if @player1 == "rock"
        if @player2 == "scissors"
          return "Player 1 wins with rock!"
          @player1score += 1
        end
        if @player2 == "paper"
          return "Player 2 wins with paper!"
          @player2score += 1
        end
      end
      if @player1 == "scissors"
        if @player2 == "rock"
          return "Player 2 wins with rock!"
          @player2score += 1
        end
        if @player2 == "paper"
          return "Player 1 wins with scissors!"
          @player1score += 1
        end
      end
      if @player1 == "paper"
        if @player2 == "rock"
          return "Player 1 wins with paper!"
          @player1score += 1
        end
        if @player2 == "scissors"
          return "Player 2 wins with scissors!"
          @player2score += 1
        end
      end
    end
  end

end
