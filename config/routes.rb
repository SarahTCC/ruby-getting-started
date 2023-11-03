Rails.application.routes.draw do
  resources :sarahs
  root 'sarahs#index'
  get 'redirect', to: 'sarahs#redirect_to_example'
end
