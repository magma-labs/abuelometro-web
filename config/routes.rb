# frozen_string_literal: true

Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root to: 'home#index'
  resources :admin
end
