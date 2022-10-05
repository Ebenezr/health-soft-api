Rails.application.routes.draw do
  resources :patient_vitals
  resources :appointments
  resources :patients
  resources :doctors
  resources :nurses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
