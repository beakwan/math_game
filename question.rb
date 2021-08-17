class Question

  def initialize(player)
    @player = player
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @total = @num1 + @num2
  end

  def ask 
    puts "#{@player}: What does #{@num1} plus #{@num2} equal?"
  end

  def validate(answer)
    answer == @total
  end

end

