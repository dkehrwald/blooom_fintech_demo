Rails.application.routes.draw do

  resources :accounts
  resources :users
  root 'users#users'

  post '/users/:id/edit' => 'users#edit'
  post '/accounts/:id/edit' => 'accounts#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
