Rails.application.routes.draw do
  get 'users_subjects/new'
  get 'subjects/index'
  get 'subjects/new'
  get 'subjects/edit'
  get 'subjects/show'
  get '/add_subject', to: "users#add_subject"
  get "contact", to: "static_pages#contact"
  get "index", to: "users#index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/edit", to: "users#edit"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :subjects
  resources :users_subjects 
  root "static_pages#home"
end
