class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ratyrate_rater
   has_one :image, as: :imageable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_paranoid

  has_many :address
  has_many :books
  has_many :views ,as: :viewable
  has_one  :profile_pic ,:class_name => 'Image'  , as: :imageable
  has_many :users_reviews, :class_name => 'Review', as: :reviewable
  has_many :reviews_for_books,->{where(reviewable_type:'Book')}, :class_name => 'Review', :foreign_key => 'reviewer'
  has_many :reviews_for_users,->{where(reviewable_type:'User')}, :class_name => 'Review', :foreign_key => 'reviewer'
  belongs_to :state
  belongs_to :city 
         def full_name
           self.f_name + " " + self.l_name
         end

end
