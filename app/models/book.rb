class Book < ApplicationRecord
    	has_one :cover, :class_name=>'Image',  as: :imageable
    	accepts_nested_attributes_for :cover
      validates :name, presence: true

end
