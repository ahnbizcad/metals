class AddNameToConsignees < ActiveRecord::Migration
  def change
    add_column :consignees, :name, :string

    add_index :consignees, :name
  end
end
