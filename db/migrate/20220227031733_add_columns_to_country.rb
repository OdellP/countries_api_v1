# frozen_string_literal: true

class AddColumnsToCountry < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :ccn3, :string
    add_column :countries, :cioc, :string
    add_column :countries, :independent, :boolean, default: true
    add_column :countries, :status, :string
    add_column :countries, :un_member, :boolean, default: true
  end
end
