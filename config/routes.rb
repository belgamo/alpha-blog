Rails.application.routes.draw do
  resources :comments
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: %i[:new]

end
