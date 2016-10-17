class AddContactToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :contact, :text
  end
end
