Rails.application.routes.draw do
  
  root 'welcome#index'

  # get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :vehicles



  
end
