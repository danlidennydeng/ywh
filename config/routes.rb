Rails.application.routes.draw do
  
  resources :candidates
  resources :ownerships
  resources :business_identities
  resources :official_identities
  resources :role_categories
  resources :residences
  resources :xiaoqus
  resources :approving_statuses
  resources :reasons
  resources :individual_identities
  resources :roles
  resources :entities
  resources :educations
  resources :securities

  authenticated :user do
  root to: 'home#index', as: :authenticated_root
  end

  root to: redirect('/u/sign_in')

  devise_for :users, :path => 'u'

  resources :sexes
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
