Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contact
  resources :user
  post '/login' => 'authentication#create'
  post '/logout' => 'authentication#destroy'
  post '/role' => 'role#create'
  root 'home#index'

end
