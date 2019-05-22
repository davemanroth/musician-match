class AddBandRefToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :band, foreign_key: true
  end
end
