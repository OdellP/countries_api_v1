class AddNameToCountries < ActiveRecord::Migration[6.1]
  def change
    add_reference :countries, :name
  end
end
