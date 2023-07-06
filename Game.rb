require './Players'
require './Questions'
require 'byebug'


class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def ask_question(chosen_player)
    
    # instantiate Questions class
    question =Questions.new()

    # print question to terminal
    puts question.addition_question(chosen_player.name)

    # get answer from player 
    given_answer = gets.chomp.to_i

    # get right_answer from correct_answer method
    right_answer = question.correct_answer

    # check answer for correctness & decrement lives if wrong
    if (given_answer == right_answer) 
       puts "Correct answer!" 
    else
       puts "Wrong answer!"
       chosen_player.lives -= 1
    end

  end


  def start_game 

  # set chosen_ player to player_1
  chosen_player = @player_1 

    # implement turns & show score
    while @player_1.lives > 0 && @player_2.lives > 0
      puts "-----NEW TURN-----"
      ask_question(chosen_player)

      chosen_player = chosen_player == @player_1 ? @player_2 : @player_1

      puts "P1: #{@player_1.lives} / 3 vs P2: #{@player_2.lives} / 3"

    end

    winning_player = @player_1.lives > @player_2.lives ? @player_1 : @player_2

    puts "#{winning_player.name} wins with a score of #{winning_player.lives} / 3"

    puts "GAME OVER!"
    puts "Goodbye!"

  end

end



