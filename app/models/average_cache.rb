class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "BooksUser"
  belongs_to :rateable, :polymorphic => true
end
