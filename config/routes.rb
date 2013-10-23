RecommendationsApp::Application.routes.draw do

  # Display all item
  get "/all" => 'recommendations#index'

  # Show the details of just one item
  # http://localhost:3000/details/98
  # params = { "id" => "98"}
  get "/details/:id" => 'recommendations#show'

end
