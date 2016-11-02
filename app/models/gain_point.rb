class GainPoint < ApplicationRecord
   
  enum activity: [:review_user, :review_book, :share_social, :invite_friend, :like_book, :share_book_for_free, :share_book_for_price, :return_book_to_after_date, :return_book_before_or_on_date, :not_take_book_before_auto_cancel, :add_book_to_wishlist, :rented_a_book]
   belongs_to :user

end
