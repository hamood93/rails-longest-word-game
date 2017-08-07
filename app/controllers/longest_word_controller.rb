require "longest_word"

class LongestWordController < ApplicationController
  def game
    @letters = generate_grid(10)
  end

  def score
    @user_longest_word = params[:user_longest_word]
    @score = run_game(@user_longest_word, params[:grid].split(''), params[:start_time].to_datetime, Time.now)
  end
end
