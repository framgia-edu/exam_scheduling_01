Rails.application.routes.draw do
  get "/login", to: "login#new"
  post "/login", to: "login#create"

  resource :subject, only: [:show]
  
  namespace :admin do
  	resource :subject, except: [:new, :create, :destroy]
  end 
end
