class AddMotivationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :motivation, :text
  end
end
