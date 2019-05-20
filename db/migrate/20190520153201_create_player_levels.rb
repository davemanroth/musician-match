class CreatePlayerLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :player_levels do |t|
      t.string :level
      t.string :years_played

      t.timestamps
    end
  end
end
