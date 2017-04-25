class AddPostToNews < ActiveRecord::Migration
  def change
    add_column :news, :post, :text
  end
end
