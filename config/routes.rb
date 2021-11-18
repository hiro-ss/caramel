Rails.application.routes.draw do

  root to: 'toppages#index'

  devise_for :users, controllers: {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }

  get 'users/show' => 'users#show'
  resources :users, only: [:show, :index]

  resources :messages, only: [:create]

  resources :rooms, :only => [:create, :show, :index]
end
