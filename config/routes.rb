Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
   resources :books


  root 'books#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
