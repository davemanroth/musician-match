class CreateSongInstrumentLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :song_instrument_levels do |t|
      t.belongs_to :song_instrument, index: true
      t.belongs_to :song_level, index: true
      t.timestamps
    end
  end
end
