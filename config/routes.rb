Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # devise_for :contractors, controllers: { registrations: "contractors/registrations" }
  # devise_for :requesters

  resources :tasks do
    resources :bids, only: [:new, :create, :index, :show]
  end

  root controller: :home, action: :index
  resources :home, only: [:index]
end
