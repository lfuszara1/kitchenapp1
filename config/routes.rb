# frozen_string_literal: true

Rails.application.routes.draw do
  get 'board/index'
  get 'board/show'
  get 'board/new'
  get 'board/create'
  get 'board/edit'
  get 'board/update'
  get 'board/delete'
  get 'board/destroy'
  get 'home/index'
  devise_for :users

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
