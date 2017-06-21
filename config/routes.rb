Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # devise_for :contractors, controllers: { registrations: "contractors/registrations" }
  # devise_for :requesters

  resources :tasks do
    resources :bids, only: [:new, :create, :index, :show]
  end

  resources :charges, only: [:create]

  root controller: :home, action: :index
  resources :home, only: [:index]

  get '/bid_terms', to: 'bids#bid_terms_doc', as: 'bid_terms_doc'
  post '/winning_bid', to: 'bids#winning_bid', as: 'winning_bid'
end
