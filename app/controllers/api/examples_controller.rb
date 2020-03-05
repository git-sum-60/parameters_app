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
end
