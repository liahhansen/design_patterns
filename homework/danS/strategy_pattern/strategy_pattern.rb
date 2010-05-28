class Game
<<<<<<< HEAD
  attr_accessor :player1, :player2
  def initialize(game_type, player1 = "player1", player2 = "player2")
    @player1 = player1 
    @player2 = player2
    @game = game_type.new(player1, player2)
  end
  
  def play_game
    @game.greeting_message
  end
end

class TwoHeads
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def greeting_message
    "Welcome to Two Heads game, it is #{@player1}'s turn"
  end
end

class SevenDie
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def greeting_message
    "Welcome to Seven Die game, it is #{@player1}'s turn"
  end
end
=======
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
>>>>>>> 2fb4883d6ecbad358b7c99ca8dd9fc199be30b79
