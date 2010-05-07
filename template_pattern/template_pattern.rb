class Game
  attr_accessor :player1, :player2
  def initialize(player1 = "player1", player2 = "player2")
    @player1 = player1 
    @player2 = player2
  end
  
  def play_game
    greeting_message
  end
  
  def greeting_message
  end
end

class TwoHeads < Game
  def greeting_message
    "Welcome to Two Heads game, it is #{@player1}'s turn"
  end
end

class SevenDie < Game  
  def greeting_message
    "Welcome to Seven Die game, it is #{@player1}'s turn"
  end
end
