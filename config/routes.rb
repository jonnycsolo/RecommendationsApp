RecommendationsApp::Application.routes.draw do

  root 'recommendations#index'

  get "/recommendations" => 'recommendations#index'

  get "/recommendations/new" => 'recommendations#new'
  post "/recommendations" => 'recommendations#create'

  get "/details/:id" => 'recommendations#show', :as => "details"
  get "/delete/:id" => 'recommendations#destroy'

  # Show an edit form
  get "/edit/:id" => 'recommendations#edit'
  get "/updateitem/:id" => 'recommendations#update'
end
