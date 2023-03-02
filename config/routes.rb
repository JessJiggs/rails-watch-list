Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# resources user-movies
# - index & show
# - create & new
#   resources movie-list
#     - index
#     - bookmark
#     - destroy a bookmark

#     resources :movies, only: [:index, :show] do
#       resources :bookmark, only: [:index, :new, :create]
#     end

  # Defines the root path route ("/")
  # root "articles#index"
end
