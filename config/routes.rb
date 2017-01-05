Rails.application.routes.draw do
  root 'pages#todo'

  resources :users do
    collection do
      get 'count'
    end
  end
end
