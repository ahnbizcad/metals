class AddFirstColumnsToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :supplier_id,      :integer
    add_column :purchases, :item_id,          :integer

    add_column :purchases, :po,               :string

    add_column :purchases, :purchase_price,   :real
    add_column :purchases, :lme_3m_price,     :real
    add_column :purchases, :container_count,  :integer
    add_column :purchases, :ship_to,          :string

    add_index :purchases, :po
  end
end
