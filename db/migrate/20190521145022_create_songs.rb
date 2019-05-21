class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :length
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
