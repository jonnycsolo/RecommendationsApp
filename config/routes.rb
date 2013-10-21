RecommendationsApp::Application.routes.draw do

  get "/all" => 'recommendations#index'
  get "/details" => 'recommendations#details'

end
