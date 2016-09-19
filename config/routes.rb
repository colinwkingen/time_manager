Rails.application.routes.draw do

  devise_for :users
  root :to => 'days#index'

  resources :days do
    resources :activities, :except => [:show, :index]
  end

  resources :activities do
    resources :tags, :only => [:new, :create, :show]
  end

end
