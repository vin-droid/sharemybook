Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'

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
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
