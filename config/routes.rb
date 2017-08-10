Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get  'help',    to: 'static_pages#help'
  get  'about',   to: 'static_pages#about'
  get  'contact', to: 'static_pages#contact'
  get  'signup',  to: 'users#new'
  post 'signup',  to:'user#create'
  # adding Users as a resource here, which opens up
  # all required actions for it to be RESTful. Also
  # generates routes for user URLs
  resources :users
end
