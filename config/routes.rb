Rails.application.routes.draw do
  resources :timetrackings, only: [:new, :create]
  resources :geofences, only: [:new, :create]
  get "geofences/index", to: "geofences#index"

  root to: "timetrackings#index"
end
