Rails.application.routes.draw do
    resources :accomplishments, only: [:index, :create]
  end
  