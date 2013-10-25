RecommendationsApp::Application.routes.draw do

  root 'recommendations#index'

  get "/all" => 'recommendations#index'

  get "/details/:id" => 'recommendations#show', :as => "details"
  get "/delete/:id" => 'recommendations#destroy'
end
