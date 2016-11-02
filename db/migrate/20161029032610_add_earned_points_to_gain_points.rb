class AddEarnedPointsToGainPoints < ActiveRecord::Migration[5.0]
  def change
    add_column :gain_points, :earned_points, :integer
  end
end
