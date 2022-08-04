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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
