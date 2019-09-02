class DropInstrumentPlayerLevel < ActiveRecord::Migration[5.2]
  def change
    drop_table :instrument_player_levels do |t|
      t.bigint :player_level_id, index: true
      t.integer :player_instrument_d
      t.timestamps null: false
    end
  end
end
