Rails.application.routes.draw do
  get "/artists", to: "users#index", as: :artists
  get 'users/account'
  devise_for :users
  root to: 'events#index'
  get "users/:id", to: "users#show", as: :profile
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'search', to: 'events#search'

  resources :events do
    resources :event_attendees, only: [:create]
  end

  resources :rooms



  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

 resources :chatrooms, only: :show do
  resources :messages, only: :create
end


mount StripeEvent::Engine, at: '/stripe-webhooks'

end
