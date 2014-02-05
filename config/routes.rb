Synapse::Application.routes.draw do

	resources :users, :sessions, :newpapers

	root to: 'site#home'

	get '/home', to: 'site#home'

	get '/about', to: 'site#about'

	get 'papers/index', to: 'papers#index'

	post 'papers/search', to: 'papers#search', as: :search

	get '/signup', to: 'users#new'

	delete '/signout', to: 'sessions#destroy'

	get'/signin', to: 'sessions#new'

	get '/viewertest', to: 'site#viewertest'

	get '/papers/new', to: 'side#home', as: :add_paper

end
