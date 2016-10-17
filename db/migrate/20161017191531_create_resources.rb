class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|

      t.text :name
      t.text :short
      t.text :long
      t.timestamps null: false
    end
  end
end
