Rails.application.routes.draw do
  get "users/:id", to: "users#show", as: :profile
  get "/artists", to: "users#index", as: :artists
  get 'users/account'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'search', to: 'pages#search'
  
  resources :events do
    resources :event_attendees, only: [:create]
  end

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

mount StripeEvent::Engine, at: '/stripe-webhooks'

end
