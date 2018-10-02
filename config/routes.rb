Rails.application.routes.draw do
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  draw :admin

  get "/login", to: "login#new"
  post "/login", to: "login#create"
  get "/subjects/subjects_list", to: "subjects#subjects_list"
  get "/subjects/classes_list", to: "subjects#classes_list_of_subject", as: "subjects_classes_list"
  
  resource :subject, only: [:show]
  namespace :admin do
  	resource :subject, except: [:new, :create, :destroy]
  end 
  
  get "/getedit/:id", to: "users#edit"
  resources :users
  root "login#new"
end
