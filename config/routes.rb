Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    resources :event_attendees, only: [:create]
  end

  resources :rooms



  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

mount StripeEvent::Engine, at: '/stripe-webhooks'

end
