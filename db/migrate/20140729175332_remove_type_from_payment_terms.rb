class RemoveTypeFromPaymentTerms < ActiveRecord::Migration
  def change
    remove_column :payment_terms, :type, :string
    add_column :payment_terms, :payment_type, :string

    add_index :payment_terms, :payment_type
  end
end
