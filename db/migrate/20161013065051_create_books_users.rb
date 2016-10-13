class CreateBooksUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :books_users do |t|

      t.timestamps
    end
  end
end
