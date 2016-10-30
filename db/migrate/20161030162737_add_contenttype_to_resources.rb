class AddContenttypeToResources < ActiveRecord::Migration
  def change
    add_column :resources, :contenttype, :integer, default: 0, index: true
  end
end
