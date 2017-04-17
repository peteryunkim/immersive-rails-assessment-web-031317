Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]

  get '/guests/:id', to: 'guests#show', as: :guest

  get '/episodes/new', to: 'episodes#new', as: :new_episode
  get '/episodes/:id', to: 'episodes#show', as: :episode
  post '/episodes', to: 'episodes#create'
  get '/episodes/:id/edit', to: 'episodes#edit', as: :edit_episode
  patch '/episodes/:id', to: 'episodes#update'
  delete '/episode/:id', to: 'episodes#destroy', as: :delete_episode

  get '/sessions', to: 'sessions#new', as: :login
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout', as: :logout

end
