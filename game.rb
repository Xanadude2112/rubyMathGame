require_relative 'player'
require_relative 'questions'

class Game 
  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @current_player = @player1
  end

  def which_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over_message
    if @player1.lives == 0
      "🎉#{@player2.name} wins with #{@player2.lives}/3 remaining! 🏆"
    else
      "🎉#{@player1.name} wins with #{@player1.lives}/3 remaining! 🏆"
    end
  end

  def play
    while @player1.lives > 0 && @player2.lives > 0
      question = Questions.new
      question.math_functionality 
      puts "#{@current_player.name}, #{question.ask_question}"
      response = gets.chomp.to_i 
      
      if question.correct?(response)
        puts "✅ Correct!😎"
      else
        puts "🤨 Yea uh.... it's a no for me dawg 🚫"
        @current_player.lose_life
      end
      
      puts "#{@player1.display_status} vs #{@player2.display_status}"
      which_player
    end
    
    puts game_over_message
  end
end
