Rails.application.routes.draw do
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resources :stores, only: %i[index new create show edit update destroy] do
    resources :articles, only: %i[index new create show edit update destroy]
    resources :comments, only: %i[create update destroy]

    collection do
      get 'favorites'
    end
  end

  resources :favorites, only: %i[create destroy]

  resources :areas, only: %i[index show new edit update create destroy]
  resources :features, only: %i[index show new edit update create destroy]
  resources :coffees, only: %i[index show new edit update create destroy]
end
