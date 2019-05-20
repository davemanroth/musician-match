class CreateSongLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :song_levels do |t|
      t.string :level
      t.string :explanation

      t.timestamps
    end
  end
end
