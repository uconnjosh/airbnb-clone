JANBnB::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users
  resources :properties

  root 'users#index'



end
