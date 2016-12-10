class AddFeaturedToChampions < ActiveRecord::Migration
  def change
    add_column :champions, :featured, :boolean, default: false
  end
end
