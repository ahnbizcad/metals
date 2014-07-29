class AddDateToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :date_of_purchase, :date

    add_index :purchases, :date_of_purchase
  end
end
