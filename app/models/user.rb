class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   has_one :image, as: :imageable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




         def full_name
         	 self.f_name + " " + self.l_name
         end
end
