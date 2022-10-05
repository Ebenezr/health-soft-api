Rails.application.routes.draw do
  # resources :patient_vitals
  resources :appointments, only: [:index, :show, :create, :update, :destroy] 
  resources :patients,  only: [:index, :show, :create, :update, :destroy] 
  resources :doctors,  only: [:index, :show, :create, :update, :destroy] 
  resources :nurses, only: [:index, :show, :create, :update, :destroy] 
  resources :users, only: [:create, :show] 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
