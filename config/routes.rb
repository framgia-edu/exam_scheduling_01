Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
  root "subjects#index"
  post "subjects/add" , to: "subjects#add"
  get "subjects/remove", to: "subjects#remove"
  resources :subjects
  resources :rooms
  resources :schedules
  end
end
