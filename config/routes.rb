Rails.application.routes.draw do
  #root :to => "\"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" =>"home#index"
  resources :orders
  resources :users
end
