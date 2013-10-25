RecommendationsApp::Application.routes.draw do

  root 'recommendations#index'

  get "/all" => 'recommendations#index'

  get "/additem" => 'recommendations#new'
  get "/createitem" => 'recommendations#create'

  get "/details/:id" => 'recommendations#show', :as => "details"
  get "/delete/:id" => 'recommendations#destroy'
end
