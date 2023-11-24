Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/users', to: "users#index"
end
