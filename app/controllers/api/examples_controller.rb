class Api::ExamplesController < ApplicationController
  def query
    p "here are the parameters"
    @user_name = params["name"]
    @user_name = @user_name.reverse
    p "those were the parameters"
    render 'query_params.json.jb'
  end

  def name
    # if the name begins with A, show a message, otherwise show some other message
    if params[:name][0] == "a"
      @message = "name begins with letter A"
    else 
      @message = "name does not begin with a"
    end
    render 'the_name.json.jb'
  end

  def guess
    user_guess = params[:user_guess].to_i

    # figure out what the real answer is
    answer = 40
    # if the number is above that, let the user know
    if user_guess > answer
      @message = "you guessed too high"
    elsif user_guess < answer
      @message = "you guesseed too low"
    else
      @message = "you win"
    end
    # if the number is below, let the user know
    # if they get it right, let the user know
    
    render 'estimate.json.jb'
  end
end
