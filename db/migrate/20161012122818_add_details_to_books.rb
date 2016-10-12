class AddDetailsToBooks < ActiveRecord::Migration[5.0]
  def change
  	add_column :books , :published_at, :string
  	add_column :books , :author, :string
  end
end
