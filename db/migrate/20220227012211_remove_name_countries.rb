class RemoveNameCountries < ActiveRecord::Migration[6.1]
  def change
    remove_column :countries, :name, :string
  end
end
