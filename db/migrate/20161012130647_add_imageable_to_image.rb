class AddImageableToImage < ActiveRecord::Migration[5.0]
  def change
    add_reference :images, :imageable, polymorphic: true
  end
end
