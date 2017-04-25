class AddCountryToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :country, :text
  end
end
