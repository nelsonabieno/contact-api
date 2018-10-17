Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contact
  resources :user
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  post '/role' => 'role#create'
end
