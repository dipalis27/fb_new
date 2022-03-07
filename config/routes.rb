Rails.application.routes.draw do
  # get 'posts/index'
  #get 'posts/like'
  devise_for :users
  root to: "posts#index"
  
  # resources :posts do
  # collection do
  #   get 'like'
  # end
  # end

  # get '/like', to: "posts#like"
  get '/search', to: "posts#search"
   resources :likes
  resources :comments
  resources :posts
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
