Rails.application.routes.draw do

  devise_for :users
  root :to => 'days#index'

  resources :days  do
    resources :activities
  end

end
