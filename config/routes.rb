Rails.application.routes.draw do
  get "/", to: "lists#index"
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'lists/new'
  # get 'lists/:id', to: "lists#show"
  # get 'lists', to: "lists#index"
  # post 'lists', to: "lists#create"
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index show create new] do
    resources :bookmarks, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
