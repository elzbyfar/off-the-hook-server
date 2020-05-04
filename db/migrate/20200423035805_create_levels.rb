class CreateLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :max_time
      t.integer :nutrients_needed
      t.string :background_image

      t.timestamps
    end
  end
end
