Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'posts#index'

  get '/register' => 'users#new'
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
