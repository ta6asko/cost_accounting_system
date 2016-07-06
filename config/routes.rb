Rails.application.routes.draw do

  # devise_for :user, only: []

  root 'home#index'

  namespace :api, defaults: {format: :json} do
    resource :login, only: [:create], controller: :sessions
    resource :users do
      collection do
        get :index
      end
    end
  end

end
