Rails.application.routes.draw do

	root 'welcome#index'

	get 'signup', to: 'users#new'
	resources :users, only: [:create]
	get 'home', to: 'home#index'

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
