Rails.application.routes.draw do
  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    
    resources :users, only: %i[index show edit update destroy]
    resources :articles, only: %i[index show edit update destroy] 
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  
  root 'static_pages#top'

  post 'guest_login', to: 'user_sessions#guest_login'

  resources :password_resets, only: %i[new create edit update]

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create show]
  resources :stores, only: %i[index new create show edit update destroy] do
    collection do
      get 'favorites'
    end
    resources :comments, only: %i[create update destroy]
    resources :articles, only: %i[index new create show edit update destroy] do
      collection do
        get 'search'
      end
      resources :likes, only: %i[create destroy]
      collection do
        get :likes
      end
    end
  end

  resources :favorites, only: %i[create destroy]
  resources :likes, only: %i[create destroy]
  resource :profile, only: %i[show edit update]

  resources :areas, only: %i[index show new edit update create destroy]
  resources :features, only: %i[index show new edit update create destroy]
  resources :coffees, only: %i[index show new edit update create destroy]
end
