# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users

  root 'users#index'
    resources :users do
    resources :posts do
      resources :comments
      resources :likes
    end
  end
end
