class Api::ExamplesController < ApplicationController
  def query
    p "here are the parameters"
    @user_name = params["name"]
    @user_name = @user_name.reverse
    p "those were the parameters"
    render 'query_params.json.jb'
  end
end
