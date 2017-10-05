Rails.application.routes.draw do
  devise_for :users
  resources :time_sheets, only: [:index, :new, :create]
  root to:"time_sheets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
