Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resources :stores, only: %i[index new create show] do
    resources :articles
    resources :comments, only: %i[create update destroy]

    collection do
      get 'favorites'
    end
  end

  resources :favorites, only: %i[create destroy]

end
