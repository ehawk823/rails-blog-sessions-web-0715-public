RailsBlog::Application.routes.draw do
  resources :sessions

  resources :users
  resources :tags

  get '/signup', to: 'users#new'

  get '/users/:id', to: 'posts#index'

  resources :posts do
    resources :comments
  end

end
