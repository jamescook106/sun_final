class RemoveCOtherFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :c_other, :string
  end
end
