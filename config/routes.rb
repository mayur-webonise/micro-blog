Rails.application.routes.draw do
  devise_for :authers, controllers: {registrations:'authers/registrations'}
  root "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts do 
    resources :comments
  end
  # Defines the root path route ("/")
  # root "articles#index"
  put '/status_published', to: 'posts#status_published'
end
