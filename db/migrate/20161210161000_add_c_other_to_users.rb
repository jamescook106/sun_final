class AddCOtherToUsers < ActiveRecord::Migration
  def change
    add_column :users, :c_other, :string
  end
end
