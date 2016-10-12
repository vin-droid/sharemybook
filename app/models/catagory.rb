class Catagory < ApplicationRecord
	has_one :image, as: :imageable
end
