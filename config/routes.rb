Rails.application.routes.draw do
  get 'users/index'
# localhost:3000/users
get '/users', to: 'users#index'

# localhost:3000/users/1
get '/users/:id', to: 'users#show'
end
