Rails.application.routes.draw do
  resources :sarahs
  root 'sarahs#index'
end
