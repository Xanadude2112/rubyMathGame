# Create two Player objects with names and initial lives set to 3.
class Player
  # Using attr_accessor to create getter and setter methods for name, lives
  attr_accessor :name, :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end

  # Displays game status 
  def display_status
    "#{name}: #{lives}/3 lives"
  end

  # Logic for decrementing lives
  def lose_life
    @lives -= 1 if @lives > 0
  end
end
