Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root 'home#index'

  resources :profiles, except: [:show, :destroy] do
    collection do
      get :coffee
      get :martini
    end
  end


end
