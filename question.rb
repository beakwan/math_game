class Question

  def ask
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "What does #{num1} plus #{num2} equal?"
  end

end

