RecommendationsApp::Application.routes.draw do

  # Display all item
  get "/all" => 'recommendations#index'

  # Show the details of just one item
  get "/details" => 'recommendations#show'

end
