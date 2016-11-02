class AddAvailabilityStatusToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :availablity_status, :string
  end
end
