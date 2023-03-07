Rails.application.routes.draw do
  root "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"
  put '/status_published', to: 'posts#status_published'
end
