class Book < ApplicationRecord
		include PublicActivity::Model
	tracked

	ratyrate_rateable 'ratings'
	acts_as_votable
	# acts_as_paranoid
	enum type:[:requested, :uploaded]
	enum availability_status:[:on, :after]


	has_one :cover, :class_name=>'Image',  as: :imageable
	has_many :reviews, as: :reviewable, dependent: :destroy

	belongs_to :user 
	accepts_nested_attributes_for :cover
	validates :name, presence: true


end
