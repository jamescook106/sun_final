class AddCuratedToResources < ActiveRecord::Migration
  def change
    add_column :resources, :currated, :boolean, default: false
  end
end
