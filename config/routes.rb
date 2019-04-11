Rails.application.routes.draw do
  resources :battlemechs
  resources :weapons
  
  root 'battlemechs#index'
end
