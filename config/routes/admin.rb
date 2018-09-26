namespace :admin do
  resource :subject, except: [:new, :create, :destroy]
end

