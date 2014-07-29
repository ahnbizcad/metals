class CreateTermOfPrices < ActiveRecord::Migration
  def change
    create_table :term_of_prices do |t|

      t.timestamps
    end
  end
end
