class AddNameToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :name, :text
  end
end
