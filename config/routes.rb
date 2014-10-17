Rails.application.routes.draw do

  root 'welcome#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  	resources :users, :only => [:new, :create]
  	resources :vehicles do 

	  resources :fluid_change, :except => [:show] 
	  resources :part, :except => [:show]
	end

  
end
