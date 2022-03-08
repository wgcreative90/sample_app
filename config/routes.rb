# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  root 'static_pages#home' # GET /root => /static/home
  get 'static_pages/home', as: 'home' # GET /static/pages/home
  get 'static_pages/about', as: 'about' # GET /static/pages/about
  get 'static_pages/help' , as: 'help'  # GET /static/pages/help
  get 'static_pages/login', as: 'login' # GET /static/pages/help
  get 'static_pages/signup', as: 'signup' # GET /create new user
  get 'static_pages/contact', as: 'contact' # GET /create new user
end
