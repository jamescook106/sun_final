class RemoveCurratedFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :currated, :boolean
  end
end
