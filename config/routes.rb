Rails.application.routes.draw do
  resources :users do
    get 'users', to: 'users#index'
  end

  resources :profiles do
    get 'profiles', to: 'profiles#index'
  end

  post '/login', to: 'sessions#create'
  # get '/users/:id', to: 'users#show'
end
