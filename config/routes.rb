Rails.application.routes.draw do
  resources :leagues, only: [:index, :show]
end