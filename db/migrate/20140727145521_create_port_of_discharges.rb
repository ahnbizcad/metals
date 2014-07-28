class CreatePortOfDischarges < ActiveRecord::Migration
  def change
    create_table :port_of_discharges do |t|

      t.timestamps
    end
  end
end
