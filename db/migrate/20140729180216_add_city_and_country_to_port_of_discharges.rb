class AddCityAndCountryToPortOfDischarges < ActiveRecord::Migration
  def change
    add_column :port_of_discharges, :city, :string
    add_column :port_of_discharges, :country, :string

  end
end
