class AddLatAndLongToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lat, :integer
    add_column :users, :long, :integer
  end
end
