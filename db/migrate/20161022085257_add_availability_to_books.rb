class AddAvailabilityToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :availability, :datetime
  end
end
