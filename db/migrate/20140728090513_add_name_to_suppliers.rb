class AddNameToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :name, :string

    add_index :suppliers, :name
  end
end
