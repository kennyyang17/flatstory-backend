Rails.application.routes.draw do
  resources :users
  resources :characters, only: [:create, :delete, :update]
end
