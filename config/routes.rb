Rails.application.routes.draw do
  resources :sarahs
  root 'sarahs#redirect_to_useamp'
end
