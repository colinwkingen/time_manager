Rails.application.routes.draw do

  devise_for :users
  root :to => 'days#index'

  resources :days do
    resources :hours, :except => [:show, :index]
  end

end
