Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'

  resources :heros
  
  get 'hero/show'
  get 'team/new'
  get 'team/create'
  get 'team/show'
  get 'team/add'
  get 'team/remove'
  resources :teams
  devise_for :users, :controllers => { registrations: 'registrations' }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
