Rails.application.routes.draw do

resources :events
resources :posts
resources :users do
get 'posts', to: 'users_posts#index'
end
end
