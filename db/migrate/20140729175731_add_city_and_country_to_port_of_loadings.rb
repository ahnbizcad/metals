class AddCityAndCountryToPortOfLoadings < ActiveRecord::Migration
  def change
    add_column :port_of_loadings, :city, :string
    add_column :port_of_loadings, :country, :string

  end
end
