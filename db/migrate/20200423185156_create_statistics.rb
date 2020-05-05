class CreateStatistics < ActiveRecord::Migration[6.0]
  def change
    create_table :statistics do |t|
      t.integer :pellet_points
      t.boolean :captured_key
      t.boolean :completed

      t.timestamps
    end
  end
end
