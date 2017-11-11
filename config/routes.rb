Rails.application.routes.draw do

  resources :bookings, only: [:new, :create, :show]

  get '/search', to: 'flights#index'
  root 'flights#index'
end
