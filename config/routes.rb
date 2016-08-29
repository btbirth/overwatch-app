Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  resources :heros
  resources :teams
  
  get 'hero/show'
  get 'teams/new'
  get 'teams/create'
  get 'teams/show'
  get 'teams/add'
  get 'teams/remove'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
