class AddLatAndLongToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :lat, :float
    add_column :books, :long, :float
  end
end
