class AddLrToChampions < ActiveRecord::Migration
  def change
        add_column :champions, :LR, :boolean, default: false
  end
end
