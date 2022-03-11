# Rails.application.routes.draw do
#   root   'welcome#index'
#   get    '/help',    to: 'static_pages#help'
#   get    '/about',   to: 'static_pages#about'
#   get    '/contact', to: 'static_pages#contact'
#   get    '/signup',  to: 'users#new'
#   post   '/signup',  to: 'session#new'
#   get    '/login',   to: 'users#login'
#   post   '/login',   to: 'sessions#create'
#   delete '/logout',  to: 'sessions#destroy'
#   resources :users
#   resources :account_activations, only: [:edit]

  
# end

Rails.application.routes.draw do
  root 'welcome#index'
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
