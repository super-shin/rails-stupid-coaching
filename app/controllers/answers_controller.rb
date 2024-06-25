class AnswersController < ApplicationController
  def answer
    @responses = ["Great!", "Silly question, get dressed and go to work", "I don't care, get dressed and go to work!"]
    @ans = params[:answer_input]
  end
end
