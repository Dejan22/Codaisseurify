Rails.application.routes.draw do

  root to: 'artists#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:index, :show, :destroy] do
    resources :songs
  end

  namespace :api do
  resources :artists do
    resources :songs, only: [:create, :destroy]
  end
end
end

# only: [:create, :destroy]
