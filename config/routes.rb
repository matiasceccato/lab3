Rails.application.routes.draw do
  resources :monsters, only: [:index, :show, :destroy]

  root "monsters#index"
end
