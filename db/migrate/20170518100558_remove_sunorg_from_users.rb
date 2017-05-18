class RemoveSunorgFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :sunorg, :string
  end
end
