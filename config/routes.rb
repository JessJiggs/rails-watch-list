Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# resources user-movies
# - index & show

#   resources movie-list
#     - index & show
#     - bookmark create
#     - destroy a bookmark

    resources :lists, only: [:index, :show, :new, :create] do
      resources :bookmarks, only: [:new, :create]
    end
    delete "bookmark", to: "bookmarks#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
