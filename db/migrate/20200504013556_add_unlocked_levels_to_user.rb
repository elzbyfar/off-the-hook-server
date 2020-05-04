class AddUnlockedLevelsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :unlocked_levels, :text, array: true, default: []
  end
end
