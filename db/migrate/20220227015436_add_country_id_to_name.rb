class AddCountryIdToName < ActiveRecord::Migration[6.1]
  def change
    add_column :names, :country_id, :integer
  end
end
