JANBnB::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users
  resources :properties do
    resources :photos
  end


  root 'users#index'



end
