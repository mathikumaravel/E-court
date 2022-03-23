Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  resources :case_infos
  resources :court_names
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
