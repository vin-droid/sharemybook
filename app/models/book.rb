class Book < ApplicationRecord
    	has_many :image, as: :imageable
end
