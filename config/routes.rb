Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "subjects#index"
    resources :subjects do
      collection do
      post 'add'
      get 'remove'
      end
    end
    resources :rooms
    resources :schedules
  end
end
