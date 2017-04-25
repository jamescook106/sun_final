class RemoveLinkedinFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :linkedin, :string
  end
end
