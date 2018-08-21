require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rps.rb')

class TestRPS < Minitest::Test

  def setup
    @paper = RPS.new("rock", "paper")
    @rock = RPS.new("rock", "scissors")
    @scissors = RPS.new("scissors", "paper")
    @tie = RPS.new("scissors", "scissors")
    @random = RPS.new("spanky", "spank")
  end

  def test_players_can_tie
    assert_equal("Both players are tied!", @tie.play)
  end

  def test_player1_can_win
    assert_equal("Player 1 wins with rock!", @rock.play)
  end

  def test_player2_can_win
    assert_equal("Player 2 wins with paper!", @paper.play)
  end

  def test_player1_has_score
    @scissors.play
    assert_equal(1, @scissors.player1score)
  end

  def test_player2_has_score
    @paper.play
    assert_equal(1, @paper.player2score)
  end

  def test_random_choice
    @random.random
    assert_equal("rock", @random.player1)
    assert_equal("scissors", @random.player2)
  end

end
