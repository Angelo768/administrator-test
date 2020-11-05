Rails.application.routes.draw do
  resources :projects_performances
  resources :projects_managers
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
