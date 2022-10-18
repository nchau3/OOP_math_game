class Question
  attr_reader :question, :answer
  
  def generate_question
    operators = ['+', '-', '*', '/']
    question = "#{rand(20)} #{operators[rand(3)]} #{rand(20)}"
  end 

  def initialize()
    @question = generate_question
    @answer = eval(@question)
  end

end
