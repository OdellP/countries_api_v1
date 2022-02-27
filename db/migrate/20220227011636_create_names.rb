class CreateNames < ActiveRecord::Migration[6.1]
  def change
    create_table :names do |t|
      t.string :common,   null: false
      t.string :official, null: false

      t.timestamps
    end
  end
end
