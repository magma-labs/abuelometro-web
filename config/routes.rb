# frozen_string_literal: true


Rails.application.routes.draw do
  resources :profiles

  resources :elders

  devise_for :users
  root to: 'home#index'
  resources :admin
end
