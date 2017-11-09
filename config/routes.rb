Rails.application.routes.draw do

  post '/', to: 'flights#index'
  root 'flights#index'
end
