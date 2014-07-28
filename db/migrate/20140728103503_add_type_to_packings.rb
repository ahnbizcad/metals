class AddTypeToPackings < ActiveRecord::Migration
  def change
    add_column :packings, :type, :string

    add_index :packings, :type
  end
end
