Rails.application.routes.draw do
  resources :event_models
  resources :models
  resources :designers
  resources :events
  resources :users

  resources :events, only: [:edit] do 
    resources :event_models, only: [:edit, :new, :create]
  end 
  
  
  
  
  
  patch "/sessions/reset", to: "sessions#reset"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end