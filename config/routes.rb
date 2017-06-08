Rails.application.routes.draw do

  root controller: :home, action: :index
  resources :home, only: [:index]

end
