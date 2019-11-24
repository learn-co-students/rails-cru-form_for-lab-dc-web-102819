Rails.application.routes.draw do
  resources :genres, only: [:create, :update, :show, :edit, :new]
  resources :artists, only: [:create, :update, :show, :edit, :new]
  resources :songs, only: [:create, :update, :show, :edit, :new, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
