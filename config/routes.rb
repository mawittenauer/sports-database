Rails.application.routes.draw do
  resources :leagues, only: [:index, :show]
  get "/leagues/:id/teams", to: "leagues#show_teams"
end
