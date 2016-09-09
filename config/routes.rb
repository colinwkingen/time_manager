Rails.application.routes.draw do
  resources :days do
    resources :hours
  end

end
