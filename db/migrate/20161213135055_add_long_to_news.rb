class AddLongToNews < ActiveRecord::Migration
  def change
    add_column :news, :long, :text
  end
end
