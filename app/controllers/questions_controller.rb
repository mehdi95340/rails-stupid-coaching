class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @my_question = params["question"]
    if @my_question == "I am going to work right now!"
      @coach = "Good"
    elsif @my_question[-1] == "?"
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
