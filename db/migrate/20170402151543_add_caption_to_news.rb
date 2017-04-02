class AddCaptionToNews < ActiveRecord::Migration
  def change
    add_column :news, :caption, :text
  end
end
