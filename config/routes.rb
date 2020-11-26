Rails.application.routes.draw do

	root 'welcome#index'

	get 'signup', to: 'users#new'
end
