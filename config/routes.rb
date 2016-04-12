Rails.application.routes.draw do
  get '/about' => 'page#about'

  root to: "page#about"

  devise_for :users

  authenticate :user do
    root to: "hackers#index", as: :authenticated_root

    resources :communities
    resources :technologies
    resources :hackers, not: [:new, :destroy]
  end
end
