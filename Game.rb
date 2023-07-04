require './Players'
require './Questions'

class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def ask_question(chosen_player)
    other_player = chosen_player == @player_1 ? @player_2 : @player_1
    question =Questions.new(chosen_player, other_player)
    prompt = question.addition_question
    right_answer = question.correct_answer
    given_answer = gets.chomp.to_i
    puts given_answer
    puts right_answer
    if (given_answer == right_answer) 
       puts "Correct answer!" 
    else
       puts "Wrong answer!"
    end

  end

end

new_game = Game.new('Jimmy', 'John')
new_game.ask_question('Jimmy')

