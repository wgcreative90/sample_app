# frozen_string_literal: true

Rails.application.routes.draw {
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'

  get '/home', to: 'static_pages#home'
  post '/login', to: 'users#show'
  delete '/logout', to: 'users#logout'

  # user sessions
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  #
  #

  #micropost sessions
  # get '/login', to: 'sessions#new'

  resources :users
}
