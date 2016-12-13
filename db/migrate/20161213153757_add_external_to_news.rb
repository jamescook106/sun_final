class AddExternalToNews < ActiveRecord::Migration
  def change
    add_column :news, :external, :text
  end
end
