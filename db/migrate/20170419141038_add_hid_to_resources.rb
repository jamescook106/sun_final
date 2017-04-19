class AddHidToResources < ActiveRecord::Migration
  def change
    add_column :resources, :hid, :string
  end
end
