class CreatePaymentTerms < ActiveRecord::Migration
  def change
    create_table :payment_terms do |t|

      t.timestamps
    end
  end
end
