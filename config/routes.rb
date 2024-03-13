Rails.application.routes.draw do
  get 'web/bootstrap'
  get 'sessions/create'
    scope'/' do
        post 'login', to: 'sessions#create'
    end

resources :events do
  # localhost:3000/events/1/join
  post 'join', to: 'events#join'

  delete 'leavel, to: 'events#leave'


end

scope :profiles do
    get ':username', to: "profiles#show"
  end
  
resources :posts
resources :users do
get 'posts', to: 'users_posts#index'
end
end
