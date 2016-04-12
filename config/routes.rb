Rails.application.routes.draw do
  resources :communities

  get '/about' => 'page#about'

  root to: "communities#index"
end
