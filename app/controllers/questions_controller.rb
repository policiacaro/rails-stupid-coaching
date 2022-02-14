class QuestionsController < ApplicationController
  def ask() end

  def answer
    return @answer = 'Great!' if params[:coach_input].downcase == 'i am going to work'

    if params[:coach_input].end_with?('?')
      @answer = 'Silly question, get to work!'
    elsif params[:coach_input].end_with?('!')
      @answer = 'I like your enthusiasm! Get to work!'
    else
      @answer = "I don't care, get to work!"
    end
  end
end
