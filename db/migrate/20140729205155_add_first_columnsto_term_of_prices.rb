class AddFirstColumnstoTermOfPrices < ActiveRecord::Migration
  def change
    add_column :term_of_prices, :term , :string
    add_column :term_of_prices, :text , :string
    add_column :term_of_prices, :date , :string

  end
end
