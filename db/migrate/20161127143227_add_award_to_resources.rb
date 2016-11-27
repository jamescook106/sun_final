class AddAwardToResources < ActiveRecord::Migration
  def change
    add_column :resources, :award, :boolean, default: false
  end
end
