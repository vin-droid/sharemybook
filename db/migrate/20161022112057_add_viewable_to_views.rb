class AddViewableToViews < ActiveRecord::Migration[5.0]
  def change
    add_reference :views, :viewable, polymorphic: true
  end
end
