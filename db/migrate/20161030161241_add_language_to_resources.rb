class AddLanguageToResources < ActiveRecord::Migration
  def change
    add_column :resources, :language, :integer, default: 0, index: true
  end
end
