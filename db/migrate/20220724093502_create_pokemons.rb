class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.text :types, null: false
      t.integer :hp, null: false
      t.integer :attack, null: false
      t.integer :defense, null: false
      t.integer :speed, null: false
      t.integer :special_attack, null: false
      t.integer :special_defense, null: false

      t.timestamps
    end
  end
end
