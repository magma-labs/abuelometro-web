Rails.application.routes.draw do

  resources :profiles

  root to: 'home#index'

end
