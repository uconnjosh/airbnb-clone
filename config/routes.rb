JANBnB::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  # devise_for :users
  resources :users
  resources :properties

  root 'users#index'



end
