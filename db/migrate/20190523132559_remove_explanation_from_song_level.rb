class RemoveExplanationFromSongLevel < ActiveRecord::Migration[5.2]
  def change
    remove_column :song_levels, :explanation, :string
  end
end
