class CreateInstrumentPlayerLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :instrument_player_levels do |t|
      t.belongs_to :user, index: true
      t.belongs_to :instrument, index: true
      t.belongs_to :player_level, index: true

      t.timestamps
    end
  end
end
