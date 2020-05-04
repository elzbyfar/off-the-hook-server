class AddUnlockedCharactersToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :unlocked_characters, :text, array: true, default: []
  end
end
