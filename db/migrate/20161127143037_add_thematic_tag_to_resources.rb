class AddThematicTagToResources < ActiveRecord::Migration
  def change
    add_column :resources, :thematic_tag, :integer, default: 0, index: true
  end
end
