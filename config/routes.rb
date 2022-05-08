Rails.application.routes.draw do
  root "home#top"
  get 'home/projects' => 'home#projects'
  get 'home/item' => 'home#item'

  get 'posts/index' => 'posts#index'
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #root "posts#index"
  
  
end
