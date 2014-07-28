class AddColumnsToPaymentTerms < ActiveRecord::Migration
  def change
    add_column :payment_terms, :type, :string
    add_column :payment_terms, :text, :string
  end
end
