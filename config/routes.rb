Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/signin" => "authentications#create"
  # root to: 'destinations#index'

  root to: 'authentications#index'

  


  resources :destinations do
    resources :reviews
  end

  resources :authentications

end
