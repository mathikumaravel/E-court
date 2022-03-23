Rails.application.routes.draw do

  resources :judges
  root 'pages#home'
  resources :case_infos
  resources :court_names
  resources :case_types
  resources :case_categories
  resources :case_types
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
