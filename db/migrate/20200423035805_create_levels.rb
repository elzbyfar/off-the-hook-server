class CreateLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :levels do |t|
      t.string :territory_name
      t.string :level_name
      t.integer :max_time
      t.integer :pellet_points_needed
      t.string :background_image

      t.timestamps
    end
  end
end
