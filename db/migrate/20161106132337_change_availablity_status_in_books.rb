class ChangeAvailablityStatusInBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :availablity_status, :datetime
    add_column :books, :availability_status, :string
  end
end
