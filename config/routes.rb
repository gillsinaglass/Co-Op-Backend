Rails.application.routes.draw do
  resources :users
  resources :teams
  resources :works
  resources :collaborations
end
