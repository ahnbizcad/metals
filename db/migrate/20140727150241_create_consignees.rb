class CreateConsignees < ActiveRecord::Migration
  def change
    create_table :consignees do |t|

      t.timestamps
    end
  end
end
