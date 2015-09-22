Rails.application.routes.draw do
  
  root 'dashboard#index'
  
  resources :next_appointments
  resources :appointments
  resources :animals
  resources :doctors
  
end
