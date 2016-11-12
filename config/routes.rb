Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  resources :documents, only: [:new, :create], path: :terms_and_conditions
  resources :contacts

  get '/' => 'documents#new'
  get :private_content, to: 'documents#private_content'
  root 'documents#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
