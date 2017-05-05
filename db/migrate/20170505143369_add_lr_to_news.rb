class AddLrToNews < ActiveRecord::Migration
  def change
    add_column :news, :lr, :boolean, default: false
    add_column :news, :lra, :boolean, default: false
    add_column :news, :lrp, :boolean, default: false
  end
end
