class AnswersController < ApplicationController
  def answer
    @responses = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!", "hmm...", "All good!"]
    @ans = params[:answer_input]

    if @ans.downcase == "i am going to work"
      @response = @responses[0]
      @image_url = "/images/c-happy.png"
    elsif @ans.ends_with?("?")
      @response = @responses[1]
      @image_url = "/images/c-angry.png"
    elsif @ans.include?('think')
      @response = @responses[3]
      @image_url = "/images/c-thinking.png"
    elsif @ans.include?('okay')
      @response = @responses[4]
      @image_url = "/images/c-peace.png"
    else
      @response = @responses[2]
      @image_url = "/images/c-disappointed.png"
    end
  end
end
