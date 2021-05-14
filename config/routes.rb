Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [ :show, :destroy, :new, :create ] do
    resources :bookmarks, only: [ :new, :create]
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

