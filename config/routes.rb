Rails.application.routes.draw do
  resources :profiles
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root 'home#index'

  resources :profiles

end
