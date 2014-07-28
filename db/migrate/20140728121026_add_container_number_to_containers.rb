class AddContainerNumberToContainers < ActiveRecord::Migration
  def change
    add_column :containers, :container_number, :string

    add_index :containers, :container_number
  end
end
