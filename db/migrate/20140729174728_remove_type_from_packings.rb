class RemoveTypeFromPackings < ActiveRecord::Migration
  def change
    remove_column :packings, :type, :string
    add_column :packings, :packing_type, :string

    add_index :packings, :packing_type
  end
end
