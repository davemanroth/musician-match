class CreateInstrumentSongLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :instrument_song_levels do |t|
      t.belongs_to :song, index: true
      t.belongs_to :instrument, index: true
      t.belongs_to :song_level, index: true

      t.timestamps
    end
  end
end
