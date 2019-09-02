class CreateSongInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :song_instruments do |t|
      t.belongs_to :song, index: true
      t.belongs_to :instrument, index: true
      t.timestamps
    end
  end
end
