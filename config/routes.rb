Rails.application.routes.draw do

  devise_for :users
  root :to => 'days#index'

  resources :days, :except => [:update, :destroy] do
    resources :activities, :except => [:index]
  end

  resources :activities do
    resources :tags
  end

  resources :tags, :except => [:show, :update]

end
