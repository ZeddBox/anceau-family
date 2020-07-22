require 'sidekiq/web'

Rails.application.routes.draw do
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  get '/test', to: 'home#test'

  resources :users, only: [:show, :update, :edit], path: 'profil' # do
    # resources :profile_pics, only: [:create]
    # get '/notifications/', to: 'modifications#index'

  
  
end
