class Questions
  attr_accessor :value1, :value2
  
  def initialize()
    @value1 = rand(1..20)
    @value2 = rand(1..20)
  end

  def addition_question(name)
    question = "#{name}: What is #{@value1} + #{@value2}?"
    question
  end

  def correct_answer
     "#{value1}".to_i + "#{value2}".to_i
  end

end

