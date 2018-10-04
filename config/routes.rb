Rails.application.routes.draw do
  get "/home", to: "static_pages#home"
  get "/contact", to: "static_pages#contact"
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  draw :admin

  get "/login", to: "login#new"
  post "/login", to: "login#create"
  get "/subjects/subjects_list", to: "subjects#subjects_list"
  get "/subjects/classes_list", to: "subjects#classes_list_of_subject", as: "subjects_classes_list"
  get "/subjects/new", to: "subjects#new", as: "subjects_new"
  post "/subjects/create", to: "subjects#create", as: "subjects_create"

  resource :subject, only: [:show]
  namespace :admin do
  	resource :subject, except: [:new, :create, :destroy]
  end 
  
  get "/getedit/:id", to: "users#edit"
  resources :users
  root "login#new"
  get "/newuser", to: "users#new"
end
