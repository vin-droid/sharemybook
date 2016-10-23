class ChangePriceInBooks < ActiveRecord::Migration[5.0]
  def change
  	remove_column :books, :price, :string
  	add_column :books, :price, :float, default: 0.0 

  end
end
