class RemoveSkypeFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :skype, :string
  end
end
