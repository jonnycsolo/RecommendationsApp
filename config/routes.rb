RecommendationsApp::Application.routes.draw do

  root 'recommendations#index'

  get "/recommendations" => 'recommendations#index'

  get "/recommendations/new" => 'recommendations#new'
  post "/recommendations" => 'recommendations#create'

  get "/recommendations/:id" => 'recommendations#show', :as => "details"
  delete "/recommendations/:id" => 'recommendations#destroy'

  get "/recommendations/:id/edit" => 'recommendations#edit'
  patch "/recommendations/:id" => 'recommendations#update'
end
