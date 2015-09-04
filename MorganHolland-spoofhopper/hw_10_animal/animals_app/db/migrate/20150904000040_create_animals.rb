class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :species
      t.string :phylum
      t.boolean :is_vertebrate
      t.integer :no_of_legs

      t.timestamps null: false
    end
  end
end
