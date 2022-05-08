Rails.application.routes.draw do
  get 'home/projects'
  get 'home/item'
  get 'posts/index'
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #root "posts#index"
  root "home#top"
  
end
