Rails.application.routes.draw do

  devise_for :contractors, controllers: { registrations: "contractors/registrations" }
  devise_for :requesters

  namespace :requesters do
    resources :tasks, only: [:index, :show, :new, :create]
  end
  
  root controller: :home, action: :index
  resources :home, only: [:index]

  resources :tasks, only: [:new, :create, :index, :show]

end
