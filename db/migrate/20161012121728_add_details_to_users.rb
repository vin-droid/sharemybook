class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users , :username, :string
  	add_column :users , :f_name, :string
  	add_column :users , :l_name, :string
  	add_column :users , :mob, :string
  end
end
