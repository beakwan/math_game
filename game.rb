require './player'
require './question'

class Game

  attr_accessor :game_over

  def initialize
    @game_over = false
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def switch_turns current_player
    @current_player = (current_player == @player1) ? @player2 : @player1
  end

  def start
    while !game_over do 
      player = @current_player
      new_question = Question.new player.name

      new_question.ask
      print '>'
      answer = gets.chomp.to_i

      if new_question.validate answer
        puts 'YES! You are correct.'
      else
        player.lose
        puts 'Seriously? No!'

      if player.lives == 0
        puts (player == @player1) ? @player2.winner_message : @player1.winner_message
        puts '-----GAME OVER-----'
        @game_over = true
      break
      end
    end

  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  switch_turns @current_player
  puts '-----NEW TURN-----'

      
  end
end
end
