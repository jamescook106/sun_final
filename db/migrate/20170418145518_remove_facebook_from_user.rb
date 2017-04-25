class RemoveFacebookFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :facebook, :string
  end
end
