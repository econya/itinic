Rails.application.routes.draw do
  resources :communities
  resources :technologies

  get '/about' => 'page#about'

  root to: "communities#index"
end
