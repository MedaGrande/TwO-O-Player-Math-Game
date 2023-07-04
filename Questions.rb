class Questions
  attr_accessor :value1, :value2, :answer
  
  def initialize()
    @value1 = value1
    @value2 = value2
  end

  def addition_question
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    question = "What is #{@value1} + #{@value2}?"
    answer = value1 + value2
    puts question
  end

  def correct_answer
    puts "#{value1}".to_i + "#{value2}".to_i
  end

end

new_game = Questions.new()
new_game.addition_question
# new_game.correct_answer
