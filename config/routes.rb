Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/signin" => "authentications#create"
  get "/signup" => "authentications#new"

  post "/signin" => "authentications#create"
  post "/signup" => "authentications#signup"
  # root to: 'destinations#index'

  root to: 'authentications#index'




  resources :destinations do
    resources :reviews
  end

  resources :authentications

end
