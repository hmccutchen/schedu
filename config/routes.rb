Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: "about#index"
  get 'sign_up', to: "registrations#new"
  post "sign_up", to: "registrations#create"
 
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  get 'log_in', to: "sessions#new"
  post "log_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "auth/twitter/callback", to: "omniauth_callbacks#twitter"


  resources :twitter_accounts 
  resources :tweets

  root to: "main#index"
end
