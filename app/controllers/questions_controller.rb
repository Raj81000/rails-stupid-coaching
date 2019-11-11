class QuestionsController < ApplicationController

  def ask
  end
  # this will render the view of the same name, that is "ask", in the folder of the controller with the name that corresponds to the folder name which matches the name of the controller

  def answer
    @question = params[:question]
    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
