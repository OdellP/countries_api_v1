class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name,    null: false
      t.string :capital, null: false
      t.string :cca2,    null: false
      t.string :cca3,    null: false
      t.string :flag,    null: false

      t.timestamps
    end
  end
end
