class AddLocationToOrigins < ActiveRecord::Migration
  def change
    add_column :origins, :location, :string

    add_index :origins, :location
  end
end
