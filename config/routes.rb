Rails.application.routes.draw do
  resources :customers, only: [:index]
  
  # The below line is added.
  post 'customers/upload', to: 'customers#upload'
  # The above line is added.
end
