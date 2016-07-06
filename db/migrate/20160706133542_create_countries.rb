class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :code
      t.string :name
      t.datetime :has_pokemon_at

      t.timestamps
    end
  end
end
