class AddViewsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :views, :integer , array: true
  end
end
