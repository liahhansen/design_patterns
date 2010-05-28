require 'template_pattern'
#game1 first person to roll under 7 twice with a die wins
#game2 first person to flip heads twice wins
describe Game do
  describe "At the start of the game" do 
    before do
      @game = Game.new
      @game_with_names = Game.new("Liah", "Shailen")
    end
    it "there should be 2 players" do
      @game.player1.should == 'player1'
      @game.player2.should == 'player2'
    end
    
    it "the players should be able to use there own names" do
      @game_with_names.player1.should == 'Liah'
      @game_with_names.player2.should == 'Shailen'
    end
  end
end

describe TwoHeads do
  describe "At the start of the game" do 
    before do
      @two_heads = TwoHeads.new
      @two_heads_with_names = TwoHeads.new("Liah", "Shailen")
    end
    
    it "there should be 2 players" do
      @two_heads.player1.should == 'player1'
      @two_heads.player2.should == 'player2'
    end
    
    it "the players should be able to use their own names" do
      @two_heads_with_names.player1.should == 'Liah'
      @two_heads_with_names.player2.should == 'Shailen'
    end
    
    it "should output a greeting message" do
      @two_heads.play_game.should == "Welcome to Two Heads game, it is player1's turn"
      @two_heads_with_names.play_game.should == "Welcome to Two Heads game, it is Liah's turn"
    end
  end
end 

describe SevenDie do
  describe "At the start of the game" do 
    before do
      @seven_die = SevenDie.new
      @seven_die_with_names = SevenDie.new("Liah", "Shailen")
    end

    it "there should be 2 players" do
      @seven_die.player1.should == 'player1'
      @seven_die.player2.should == 'player2'
    end

    it "the players should be able to use their own names" do
      @seven_die_with_names.player1.should == 'Liah'
      @seven_die_with_names.player2.should == 'Shailen'
    end

    it "should output a greeting message" do
      @seven_die.play_game.should == "Welcome to Seven Die game, it is player1's turn"
      @seven_die_with_names.play_game.should == "Welcome to Seven Die game, it is Liah's turn"
    end
  end
end