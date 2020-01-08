Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # devise_for :users
  resources :projectts
  root :to => "projectts#index"

end
