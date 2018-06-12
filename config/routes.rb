Rails.application.routes.draw do


  resources :elders
  devise_for :users
  root to: 'home#index'

end
