Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :consultations
    resources :messages
  end
  resources :announcements
  # get 'login', to: 'logins#new'
  # get 'login/create', to: 'logins#create', as: :create_login
end
