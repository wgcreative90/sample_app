Rails.application.routes.draw do
resources :users, :microposts, :user_posts

  # get 'microposts/show'
  # get 'microposts/index'
  # get 'microposts/new'
  # get 'microposts/create'
  # get 'microposts/edit'
  # get 'microposts/update'
  # get 'microposts/delete'

  root 'welcome#index'

  get    'help',    to: 'static_pages#help'
  get    'about',   to: 'static_pages#about'
  get    'contact', to: 'static_pages#contact'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

end