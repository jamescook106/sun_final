class RemoveWhatsappFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :whatsapp, :string
  end
end
