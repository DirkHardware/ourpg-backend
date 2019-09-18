Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #users
  post 'users/', to: 'users#create'
  get 'users/:id', to: 'users#show'
  get 'users/:id/games', to: 'games#user_games'
  #games
  post 'games', to: 'games#create'
  delete 'games', to: 'games#destroy'
  get 'games/random/', to: 'games#random'
  get 'games/search/:title', to: 'games#search_title'
  get 'games/:id/elements', to: 'elements#index'
  #elements
  get 'games/:id/elements/:id', to: 'elements#show'
  post 'game/:id/new_element', to: 'elements#create'
  delete 'elements', to: 'elements#destroy'
end 
