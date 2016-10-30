class AddTypeToResources < ActiveRecord::Migration
  def change
    add_column :resources, :type, :integer, default: 0, index: true
  end
end
