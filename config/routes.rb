Rails.application.routes.draw do
  # get 'bookmarks/index'
  # get 'bookmarks/show'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/delete'
  # get 'bookmarks/destroy'

  root to: "lists#index"

  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/create'
  # get 'lists/destroy'
  # get 'films/index'
  # get 'films/show'
  # get 'films/create'
  # get 'films/destroy'

  # get 'list/new', to: 'list#new'


  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
end
