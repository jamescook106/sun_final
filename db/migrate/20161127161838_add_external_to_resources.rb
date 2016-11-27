class AddExternalToResources < ActiveRecord::Migration
  def change
    add_column :resources, :external, :text
  end
end
