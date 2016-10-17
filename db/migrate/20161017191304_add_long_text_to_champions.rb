class AddLongTextToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :long_text, :text
  end
end
