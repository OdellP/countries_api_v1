class CreateNativeNames < ActiveRecord::Migration[6.1]
  def change
    create_table :native_names do |t|
      t.string :official, null: false
      t.string :common,   null: false
      t.references :name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
