Rails.application.routes.draw do
  resources :yogas
  resources :yogs
  resources :songs
  resources :bhajans
  devise_for :users
  root to: redirect('/anils')
  resources :products
  resources :anils, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
