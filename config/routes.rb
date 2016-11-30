Rails.application.routes.draw do
  resources :leagues, only: [:index, :show]
  get "/leagues/:id/teams", to: "leagues#show_teams"
  get "/schedule/:team/:season", to: "schedules#schedule"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/admin", to: "admins#control_panel"
end
