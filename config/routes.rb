Rails.application.routes.draw do

  root :to => 'days#index'

  resources :days do
    resources :hours, :except => [:show, :index]
  end

end
