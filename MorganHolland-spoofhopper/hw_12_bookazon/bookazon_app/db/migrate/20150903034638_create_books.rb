class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.string :author
      t.boolean :available
      t.string :genre
      t.string :image_url

      t.timestamps null: false
    end
  end
end
