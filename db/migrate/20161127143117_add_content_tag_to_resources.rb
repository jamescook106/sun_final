class AddContentTagToResources < ActiveRecord::Migration
  def change
    add_column :resources, :content_tag, :integer, default: 0, index: true
  end
end
