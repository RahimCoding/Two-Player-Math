class Question
attr_reader :num1, :num2, :answer;
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @answer = @num1 + @num2
  end
 # player is a instance of the player class
  def check_answer(player)
    if(@input_answer == @answer)
      puts "Yes you are correct"
    else
      puts "no u are wrong"
      player.reduceLives
    end
  end

  def ask(player)
    puts " #{player.name} : What does #{@num1} + #{@num2} equal?"
    
    @input_answer = $stdin.gets.chomp.to_i

    check_answer(player)

  
  end

end