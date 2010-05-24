class Game
  attr_accessor :game_type
  def initialize(game_type)
    @game_type = game_type
    
  end
  
  def player1
    @game_type.player1
  end
  
  def player2
    @game_type.player2
  end
  
  def play_game
    greeting_message
  end
  
  def greeting_message
    @game_type.greeting_message
  end
  
end

class TwoHeads
  attr_accessor :player1, :player2
  def initialize (player1 = "player1", player2 = "player2")
    @player1 = player1
    @player2 = player2
  end
  
  def greeting_message
    "Welcome to Two Heads game, it is #{@player1}'s turn"    
  end
end