Rails.application.routes.draw do
  resources :application
  root 'application#redirect_to_useamp'
end
