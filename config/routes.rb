# frozen_string_literal: true
Rails.application.routes.draw do
  
  # Authentication
  # @implemented
  devise_for :users, skip: [:registrations]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Application
  # @implemented
  root to: 'home#index'
  resource  :contact,    only: [:create]
  resource  :newsletter, only: [:create]
  resource  :member, 		only: [:create]
  namespace :blog do
  	resources :posts,   only: [:index, :show]
  end

  # API
  # @implemented
  namespace :api do
  	namespace :v1 do
  		# some routes here in json
  	end
    namespace :v2 do
      # some routes here in xml
    end
  end
end
