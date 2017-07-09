Rails.application.routes.draw do
  devise_for :visitors
  resources :artists
  root to: 'pages#home'
  get 'pages/home'

resources :songs

  # get "songs" => "songs#index"
  # get 'songs/new' => "songs#new", as: :new_song
  # get "songs/:id" => "songs#show", as: :song
  # post "songs" => "songs#create"
  # get 'songs/:id/edit' => 'songs#edit', as: :edit_song
  # patch "songs/:id" => "songs#update"
  # delete "songs/:id" => "songs#destroy"
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
