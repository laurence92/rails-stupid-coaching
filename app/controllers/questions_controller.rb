class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = coach_answer(params[:answer])
  end

  private

  def coach_answer(question)
    if question.downcase == "i am going to work"
      "Great!"
    elsif question == ""
      "What's the matter? Cat got your tongue?!"
    elsif question.include? "?"
      "Silly question. Get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
