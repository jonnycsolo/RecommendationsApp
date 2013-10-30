RecommendationsApp::Application.routes.draw do

  # root 'recommendations#index'

  get "/about" => 'pages#about'

  get "/recommendations" => 'recommendations#index'

  get "/recommendations/new" => 'recommendations#new', :as => 'new_recommendation'
  post "/recommendations" => 'recommendations#create'

  get "/recommendations/:id" => 'recommendations#show', :as => "recommendation"
  delete "/recommendations/:id" => 'recommendations#destroy'

  get "/recommendations/:id/edit" => 'recommendations#edit', :as => 'edit_recommendation'
  patch "/recommendations/:id" => 'recommendations#update'
end
