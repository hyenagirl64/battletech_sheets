Rails.application.routes.draw do
  resources :components
  resources :battlemechs
  
  root 'battlemechs#index'
end
