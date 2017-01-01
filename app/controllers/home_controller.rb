class HomeController < ApplicationController
  def index
  end

  def quiz
    @q = Question.select(:content,:id).sample
  end

  def check_answer
    answer = params[:answer]
    q = Question.find(params[:question])
    if answer.eql?(q.answer) || answer.eql?(q.alternate_answer)
      render js: "$('#result').html('<h1>CORRECT</h1>');"
    else
      render js: "$('#result').html('<h1>INCORRECT</h1>');"
    end
  end
end
