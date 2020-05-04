class AddUserLevelCharacterToStatistic < ActiveRecord::Migration[6.0]
  def change
    add_reference :statistics, :user, null: false, foreign_key: true
    add_reference :statistics, :level, null: false, foreign_key: true
    add_reference :statistics, :character, null: false, foreign_key: true
  end
end
