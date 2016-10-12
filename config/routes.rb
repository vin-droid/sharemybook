Rails.application.routes.draw do
  get 'books/index'

  get 'books/show'

  get 'books/new'

  get 'books/edit'

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
