Rails.application.routes.draw do
  resources :checkups, only: [:index, :show, :create, :update, :destroy] 
  resources :appointments, only: [:index, :show, :create, :update, :destroy] 
  resources :patients,  only: [:index, :show, :create, :update, :destroy] 
  resources :doctors,  only: [:index, :show, :create, :update, :destroy] do
     resources :appointments, only: [:index, :show] 
  end
  resources :nurses, only: [:index, :show, :create, :update, :destroy] do 
    resources :appointments, only: [:index, :show] 
  end
    resources :admins, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:create, :show, :destroy] 
  resources :patient_vitals, only: [:index, :show, :create, :update, :destroy] 

  patch '/passwordreset/:email', to: "users#resetpassword"

  get '/myappointments', to: "appointments#myappointments"
  
  # Defines the root path route ("/")
  # root "articles#index"
end
