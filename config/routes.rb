Rails.application.routes.draw do
  get '/about' => 'page#about'

  root to: "page#about"

  devise_for :users

  authenticate :user do
    root to: "hackers#index", as: :authenticated_root

    resources :communities,  only: [:create, :edit, :index, :new, :show, :update]
    resources :technologies, only: [:create, :edit, :index, :new, :show, :update]
    resources :hackers,      only: [:create, :edit, :update, :show, :index]
  end
end
