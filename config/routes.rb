Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #users
  get 'users', to: 'users#index'
  get 'users/:username', to: 'users#show'
  get 'users/:id/games', to: 'games#user_games'
  post 'users', to: 'users#create'
  # delete 'users/', to: 'users#destroy'
  #games
  get 'games/random/', to: 'games#random'
  get 'games/all', to: 'games#index'
  get 'games/all_games_published', to: 'games#all_games_published'
  get 'games/search/:title', to: 'games#search_title'
  get 'games/:id/game_element_length', to: 'games#game_element_length'
  patch 'games/:id/update', to: 'games#update'
  get 'games/:id', to: 'games#show'
  post 'games', to: 'games#create'
  # delete 'games', to: 'games#destroy'
  #elements
  get 'elements/:id', to: 'elements#show'
  get 'games/:id/elements', to: 'elements#index'
  patch 'elements/:id/update', to: 'elements#update'
  post 'elements', to: 'elements#create'
  delete 'elements/:id', to: 'elements#destroy'
end 
