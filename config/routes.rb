Rails.application.routes.draw do
  resource :subject, only: [:show]

  namespace :admin do
  	resource :subject, except: [:new, :create, :destroy]
  end 
end
