Rails.application.routes.draw do
  # Home or Root path
  root 'static_pages#home' # GET /root => /static/home

  # Static page paths for nav bar
  get 'static_pages/home'  # GET /static/pages/home
  get 'static_pages/about' # GET /static/pages/about
  get 'static_pages/help'  # GET /static/pages/help
  get 'static_pages/login'  # GET /static/pages/help

end
