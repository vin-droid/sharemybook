Rails.application.routes.draw do
  get 'users/new'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/finish_signup'

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks',registrations: 'registrations' }
resources :books do
  member do
    put "like", to: "books#upvote"
    put "dislike", to: "books#downvote"
  end
end
  post ':id/write-book-review' , to:'books#write_review_for_book', as: :write_book_review 
  # put ':id/write-review'
  post ':id/add-to-wishlist', to: 'books#add_to_wishlist', as: :add_to_wishlist
  root 'books#index'
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  # devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
