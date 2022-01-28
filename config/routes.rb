Rails.application.routes.draw do
  get 'static_pages/home'  # GET /static/pages/home
  get 'static_pages/about' # GET /static/pages/about
  get 'static_pages/help'  # GET /static/pages/help
  root 'static_pages#home' # GET /root => /static/home
end
