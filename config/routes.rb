Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "lists#index"
  resources :lists, only: [:create, :index, :new, :show] do
    resources :bookmarks, only: [:create, :new ]
    resources :reviews, only: :create
    # resources :movies, only: [:index]
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end

#have to have the nesting with the movies as well?
# make movie controller for just index
# controller just normal - knows bookmarks are accessed from the list as its nested
