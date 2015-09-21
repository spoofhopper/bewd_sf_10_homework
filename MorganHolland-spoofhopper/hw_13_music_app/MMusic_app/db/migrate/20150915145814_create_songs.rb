class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :length
      t.string :genre
      t.integer :year
      t.references :artist, index: true, foreign_key: true
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
