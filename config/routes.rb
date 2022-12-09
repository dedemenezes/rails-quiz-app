Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/search', to: 'songs#search'

  # get "/songs/named/:name", to: "songs#search"

  # C
  # # NEW -> displays the form
  # get '/songs/new', to: 'songs#new', as: 'new_song'
  # # CREATE - receive the form submission
  # post '/songs', to: 'songs#create'

  # R
  # # READ ALL -> COLLECTION
  # get '/songs', to: 'songs#index', as: 'songs'
  # # READ ONE
  # get '/songs/:id', to: 'songs#show', as: 'song'

  # U
  # # EDIT
  # get '/songs/:id/edit', to: 'songs#edit', as: 'edit_songs'
  # # UPDATE
  # patch '/songs/:id', to: 'songs#update'

  # D
  # # DELETE
  # delete '/songs/:id', to: 'songs#destroy'

  # WE ONLY NEST ROUTES IF
  # WE NEED THE ID OF THE PARENT
  resources :songs do
    resources :reviews, only: [:new, :create]
  end


end
