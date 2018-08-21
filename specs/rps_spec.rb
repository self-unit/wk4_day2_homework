require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rps.rb')

class TestRPS < Minitest::Test

  def setup
    @paper = RPS.new("rock", "paper")
    @rock = RPS.new("rock", "scissors")
    @scissors = RPS.new("scissors", "paper")
    @tie = RPS.new("scissors", "scissors")
  end

  def test_players_can_tie
    assert_equal("Both players are tied!", @tie.play)
  end

  def test_player1_can_win
    assert_equal("Player 1 wins with rock!", @rock.play)
  end

  # def test_player1_can_lose
  #   assert_equal(player1score = )
  # end

  def test_player2_can_win
    assert_equal("Player 2 wins with paper!", @paper.play)
  end

  # def test_player2_can_lose
  # end

  def test_player1_has_score
  end

  def test_player2_has_score
  end

end
