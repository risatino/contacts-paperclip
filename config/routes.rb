Rails.application.routes.draw do
  resources :contacts
  
  get '/test' => 'contacts#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
