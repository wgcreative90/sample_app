Rails.application.routes.draw do
  root 'static_pages#home' # GET /root => /static/home
    get 'static_pages/home'  # GET /static/pages/home
    get 'static_pages/about' # GET /static/pages/about
    get 'static_pages/help'  # GET /static/pages/help
    get 'static_pages/login'
    get 'static_pages/signup'
    get 'application_controller/signup'

end
