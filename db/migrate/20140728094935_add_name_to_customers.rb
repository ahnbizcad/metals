class AddNameToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :name, :string

    add_index :customers, :name
  end
end
