class CreatePlayerInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :player_instruments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :instrument, index: true
      t.timestamps
    end
  end
end
