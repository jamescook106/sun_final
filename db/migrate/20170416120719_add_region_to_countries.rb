class AddRegionToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :region, :integer, default: 0, index: true
  end
end
