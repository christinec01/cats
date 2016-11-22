Rails.application.routes.draw do

  root 'herds#index'
  resources :cats

  resources :herds do
    resources :cats
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
