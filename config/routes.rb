Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kids
  get 'dashboard', to: 'pages#dashboard', as: :dashbaord
end
