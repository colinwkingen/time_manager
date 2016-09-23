Rails.application.routes.draw do

  devise_for :users
  root :to => 'days#index'

  resources :days  do
    resources :activities, :except => [:index]
  end

  resources :activities do
    resources :tags
  end

  resources :tags

end
