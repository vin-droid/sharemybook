class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.references :reviewable, polymorphic: true

      t.timestamps
    end
  end
end
