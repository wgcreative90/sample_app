Rails.application.routes.draw do
  # root_path is:
  root 'welcome#index'
  
  # User sign_up and sign_in with seesions and password reset notifications.
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

  # User Resouces
  resources :users, only: [:create, :show, :index, :new, :create]

  # Static Pages: Help, About, Contact
  get    'help',    to: 'static_pages#help'
  get    'about',   to: 'static_pages#about'
  get    'contact', to: 'static_pages#contact'

end
