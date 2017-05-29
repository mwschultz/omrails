Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
    get "signin" => 'devise/sessions#new'
    delete "signout" => 'devise/sessions#destroy'
    get "signup" => 'devise/registrations#new'
  end

  get 'feed', to: 'feed#show'

  get 'users/:username', to: 'users#show', as: 'user'

  resources :users, only: :show, param: :username do
    member do
      post 'follow', to: "follows#create"
      delete 'unfollow', to: "follows#destroy"
    end
  end

  resources :items do
  member do
    post 'vote', to: "votes#create"
    delete 'unvote', to: "votes#destroy"
    end
  end

  resources :houses
  resources :tweets
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
end
