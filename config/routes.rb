Rails.application.routes.draw do
  resources :communities

  root to: "communities#index"
end
