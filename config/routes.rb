Rails.application.routes.draw do
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  draw :admin

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  
  resource :subject, only: [:show]
  namespace :admin do
  	resource :subject, except: [:new, :create, :destroy]
  end 
  
  get "/getedit/:id", to: "users#edit"
  resources :users
  root "users#new"
end
