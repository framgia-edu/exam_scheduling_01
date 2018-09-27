Rails.application.routes.draw do
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  draw :admin

  get "/login", to: "logins#new"
  post "/login", to: "logins#create"
  
  resource :subject, only: [:show]
  namespace :admin do
  	resource :subject, except: [:new, :create, :destroy]
  end 
  get "/getlogin", to: "sessions#new"
  post "/getlogin", to: "sessions#create"
  get "/getedit/:id", to: "students#edit"
  resources :students
  root "students#new"
end

