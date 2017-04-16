class AddNewsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :news, :text
  end
end
