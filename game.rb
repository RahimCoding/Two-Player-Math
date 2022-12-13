require './player'
require './question'

class Game
  def initialize
    puts "Whos player 1?"
    player1_name = $stdin.gets.chomp
    puts "Whos player 2?"
    player2_name = $stdin.gets.chomp

    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    
    puts "Welcome to Two Player Math! #{@player1.name} and #{@player2.name}!"

  end

  def scoreboard
    puts " #{@player1.name}: #{@player1.lives}/3  vs #{@player2.name}: #{@player2.lives}/3" 
    puts "--- NEW TURN ---"
  end

  def end_game
    if(@player1.isDead)
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
    else 
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
    end

    puts "---- GAME OVER ---- "
    puts "Good Bye!"
    
  end

  def switch(current_player)
    if(current_player == @player1)     
      current_player = @player2
    else
      current_player = @player1
    end 

    return current_player
  end

  def keep_playing
    (@player1.isDead || @player2.isDead) == false
  end

  def start
    current_player = @player1
    while (keep_playing)  
      
     question = Question.new
     
     question.ask(current_player)

     scoreboard

     current_player = switch(current_player)
    end

    end_game

  end

end
