class AddFirstColumnsToSales < ActiveRecord::Migration
  def change
    add_column :sales, :customer_id,        :integer
    add_column :sales, :supplier_id,        :integer
    add_column :sales, :item_id,            :integer
    add_column :sales, :origin_id,          :integer
    add_column :sales, :term_of_price_id,   :integer

    add_column :sales, :po,                 :string
    add_column :sales, :c_po,               :string
    add_column :sales, :date_of_sale,       :date

    add_column :sales, :sale_price,        :real
    add_column :sales, :container_count,    :integer
    add_column :sales, :ship_to,            :string

    add_index :sales, :c_po
    add_index :sales, :po
    add_index :sales, :date_of_sale
  end
end
