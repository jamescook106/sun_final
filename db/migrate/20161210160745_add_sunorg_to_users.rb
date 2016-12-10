class AddSunorgToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sunorg, :string
  end
end
