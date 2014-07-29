class AddNameToItems < ActiveRecord::Migration
  def change
    add_column :items, :name, :string

    add_index :items, :name
  end
end
