class AddSadminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sadmin, :boolean
  end
end
