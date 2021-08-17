class Player

  attr_accessor :lives 
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose
    self.lives -= 1
  end

  def winner_message
    puts "#{name} wins with a score of #{lives}/3"
  end
  

end