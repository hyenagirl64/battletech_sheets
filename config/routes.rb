Rails.application.routes.draw do
  resources :weapons
  resources :battlemechs
  
  root 'battlemechs#index'
end
