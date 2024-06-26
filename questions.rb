class Questions
  attr_accessor :num1, :num2, :operator, :answer

  def math_functionality
    @num1 = rand(1..100)
    @num2 = rand(1..100)
    @operator = ['+', '-', '*', '/'].sample
    @answer = @num1.send(@operator, @num2)
  end

  def ask_question 
    puts "🌀What is #{@num1} #{@operator} #{@num2}?🌀"
  end

  def correct?(response)
    response.to_i == @answer
  end

  def self.get_input
    gets.chomp
  end

  def self.display(message)
    puts message
  end
end

