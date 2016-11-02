class AddTypeToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :type, :string
  end
end
