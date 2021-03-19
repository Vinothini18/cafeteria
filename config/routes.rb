Rails.application.routes.draw do
  get 'order_item/index'
  get 'menu_item/index'
  get 'menu/index'
  get 'menu/name'
  #root :to => "\"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" =>"home#index"
  resources :orders
  resources :users
  get "/signin"=>"sessions#new",as: :new_sessions
  post "/signin"=>"sessions#create",as: :sessions
  delete "/signout"=>"session#destroy",as: :destroy_sessions

end
