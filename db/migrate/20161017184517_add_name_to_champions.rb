class AddNameToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :first_name, :string
    add_column :champions, :last_name, :string
    add_column :champions, :short_description, :text
  end
end
