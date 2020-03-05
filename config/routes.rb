Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_param" => "examples#query"
    get "/name_url" => "examples#name"
    get "/guess_a_number" => "examples#guess"
  end
end
