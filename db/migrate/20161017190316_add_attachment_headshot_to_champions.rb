class AddAttachmentHeadshotToChampions < ActiveRecord::Migration
  def self.up
    change_table :champions do |t|
      t.attachment :headshot
    end
  end

  def self.down
    remove_attachment :champions, :headshot
  end
end
