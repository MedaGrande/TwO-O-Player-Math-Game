class Math_Questions
  def addition_question
    value1 = rand(1..20)
    value2 = rand(1..20)
    question = "What is #{value1} + #{value2}?"
    expected_answer = value1 + value2
    puts question
    puts expected_answer
  end

  # def check_answer
  #   puts expected_answer
  # end 
end

one = Math_Questions.new
one.addition_question
one.check_answer