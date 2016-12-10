class AddMsunToUsers < ActiveRecord::Migration
  def change
    add_column :users, :msun, :boolean
  end
end
