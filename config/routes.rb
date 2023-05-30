# frozen_string_literal: true

Rails.application.routes.draw do
  resources :library_items
  resources :recommendations
  resources :reviews
  get 'booklist/index'
  get 'booklist', to: 'booklist#show'
  get 'book', to: 'booklist#book'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'booklist#index'
end
