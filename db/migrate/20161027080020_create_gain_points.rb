class CreateGainPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :gain_points do |t|
      t.integer :user_id
      t.integer :activity
      t.integer :related_id
      t.integer :used_point

      t.timestamps
    end
  end
end
