class CreateSharedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :shared_items do |t|
      t.datetime :sharing_date
      t.datetime :returning_date
      t.integer :book_provider_id ,index: true
      t.integer :book_reader_id     ,index: true
      t.text :sharing_place
      t.timestamps
    end
  end
end
