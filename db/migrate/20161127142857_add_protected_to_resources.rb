class AddProtectedToResources < ActiveRecord::Migration
  def change
    add_column :resources, :protected, :boolean, default: false
  end
end
