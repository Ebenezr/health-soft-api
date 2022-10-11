Rails.application.routes.draw do
  resources :checkups, only: [:index, :show, :create, :update, :destroy] 
  resources :appointments, only: [:index, :show, :create, :update, :destroy] 
  resources :patients,  only: [:index, :show, :create, :update, :destroy] 
  resources :doctors,  only: [:index, :show, :create, :update, :destroy] 
  resources :nurses, only: [:index, :show, :create, :update, :destroy] 
  resources :users, only: [:create, :show,:index, :destroy] 
  resources :patient_vitals, only: [:index, :show, :create, :update, :destroy] 
  
  # Defines the root path route ("/")
  # root "articles#index"
end
