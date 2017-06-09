Rails.application.routes.draw do

  devise_for :contractors, controllers: { registrations: "contractors/registrations" }
  devise_for :requesters
  root controller: :home, action: :index
  resources :home, only: [:index]
  resources :tasks, only: [:new, :create]

end
