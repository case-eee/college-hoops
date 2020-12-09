Rails.application.routes.draw do

	root 'welcome#index'

	get 'signup', to: 'users#new'
	resources :users, only: [:create]
	get 'home', to: 'home#index'

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :weeks, only: [:index, :show, :new, :create, :update]

  post '/games/:game_id/bets/:pick' => 'bets#create', as: :bet
end
