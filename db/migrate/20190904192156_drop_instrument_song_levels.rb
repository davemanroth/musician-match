class DropInstrumentSongLevels < ActiveRecord::Migration[5.2]
  def change
    drop_table :instrument_song_levels do |t|
      t.bigint :song_id, index: true
      t.bigint :instrument_id, index: true
      t.bigint :song_level_id, index: true
      t.timestamps null: false
    end
  end
end
