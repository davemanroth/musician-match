class CreatePlayerInstrumentLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :player_instrument_levels do |t|
      t.belongs_to :player_instrument, index: true
      t.belongs_to :player_level, index: true
      t.timestamps
    end
  end
end
