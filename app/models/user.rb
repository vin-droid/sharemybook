class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   has_one :image, as: :imageable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :address
  has_many :views ,as: :viewable
  has_one  :profile_pic ,:class_name => 'Image'  , as: :imageable
  belongs_to :state
  belongs_to :city 
         def full_name
           self.f_name + " " + self.l_name
         end
end
