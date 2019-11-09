Rails.application.routes.draw do

  root to: 'users#show'
  get 'records/stop', to: 'records#stop'

  resources :users
  resources :records

end
