Rails.application.routes.draw do
  resources :songs
  resources :artists
  resources :artists, only: [:index] do
    resources :songs, only: [:show, :index]
  end
end
