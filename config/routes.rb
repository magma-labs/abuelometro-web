Rails.application.routes.draw do


  devise_for :users
  root to: 'home#index'
  devise_scope :user do
   get "/admin" => "user#index"
   delete "/users/sign_out" => "devise/sessions#destroy"
   get '/admin/index' => 'devise/index'
  end
end
