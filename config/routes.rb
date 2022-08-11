Rails.application.routes.draw do
  root 'static_pages#top'

  get 'static_pages/top'
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resources :articles, only: %i[index new create]
  resources :stores, only: %i[index new create show] do
    resources :comments, only: %i[create update destroy]
  end
end
