Rails.application.routes.draw do

  # devise_for :contractors
  devise_for :requesters, :contractors
  root controller: :home, action: :index
  resources :home, only: [:index]

end
