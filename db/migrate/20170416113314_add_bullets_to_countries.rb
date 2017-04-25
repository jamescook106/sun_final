class AddBulletsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :key_p, :text
    add_column :countries, :key_a, :text
    add_column :countries, :nns, :text
    add_column :countries, :contact, :text
    add_column :countries, :website, :text
  end
end
